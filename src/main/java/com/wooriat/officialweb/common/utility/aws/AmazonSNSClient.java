package com.gsitm.officialweb.common.utility.aws;


import com.amazonaws.ResponseMetadata;
import com.amazonaws.services.sns.AmazonSNS;
import com.amazonaws.services.sns.model.*;
import com.gsitm.officialweb.constant.GsitmEmailConst;
import com.gsitm.officialweb.domain.EmailContent;
import com.gsitm.officialweb.domain.TbSnsTopicUserMgt;
import com.gsitm.officialweb.repository.SnsTopicUserMgtRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** ========================================================================================
 * @Package Name   : com.gsitm.officialweb.common.utility.aws
 * @FileName  : AmazonSNSClient.java
 * @Date      : 2019. 11. 17.
 * @Author    : HJJANG
 * ========================================================================================
 * 수정일                                         작성자                                                     내용
 * ----------------------------------------------------------------------------------------
 * 2019. 11. 17.               HJJANG                                                최초 생성
 * ========================================================================================
 */

@Slf4j
@RequiredArgsConstructor
@Component
public class AmazonSNSClient {

    @Autowired
    private AmazonSNS amazonSNS;

    @Value("${spring.profiles.active}")
    private String activeProfile;

    @Value("${spring.aws.sns.topic.sales}")
    private String salesTopicArn;
    @Value("${spring.aws.sns.topic.inquiry}")
    private String inquiryTopicArn;

    private final SnsTopicUserMgtRepository snsTopicUserMgtRepository;

    @PostConstruct
    public void requestTopicSubs(){
        List<TbSnsTopicUserMgt> all = snsTopicUserMgtRepository.findAll();

        Map tempTopicMap = new HashMap<>();
        for(TbSnsTopicUserMgt topicTarget : all){
            if(topicTarget.getSubReqYn() == null || topicTarget.getSubReqYn().equals("") || topicTarget.getSubReqYn().equalsIgnoreCase("N")){
                String createdTopic = "";
                if(tempTopicMap.containsKey(topicTarget.getTopicUserEmail()+"_"+topicTarget.getInqConFlag())){
                    createdTopic = (String) tempTopicMap.get(topicTarget.getTopicUserEmail()+"_"+topicTarget.getInqConFlag());
                    log.info("Already Make topic (get by Map)Email : {}, Topic : [{}]",topicTarget.getTopicUserEmail(),createdTopic);
                }else{
                    List<TbSnsTopicUserMgt> byTopicUserEmailAndSubIdIsNotNull = snsTopicUserMgtRepository.findByTopicUserEmailAndSubIdIsNotNullAndInqConFlag(topicTarget.getTopicUserEmail(),topicTarget.getInqConFlag());

                    if(byTopicUserEmailAndSubIdIsNotNull.size() > 0){
                        TbSnsTopicUserMgt tbSnsTopicUserMgt = byTopicUserEmailAndSubIdIsNotNull.get(0);
                        createdTopic = tbSnsTopicUserMgt.getSubId();
                    }
                    if(createdTopic == null || createdTopic.equalsIgnoreCase("")){
                        // topic 생성 : 전송타입별로 prefix + seqId;
                        String topicPrefix = topicTarget.getInqConFlag().equals("I")? "INQUIRY" : "SALES";
                        String topicName = activeProfile+"_"+topicPrefix+topicTarget.getSnsTopicUserSeqId();
                        String topic = createTopic(topicName);
                        // 해당 토픽 구독 요청
                        reqSubscribe(topic,topicTarget.getTopicUserEmail());
                        createdTopic = topic;

                        log.info("New Make topic!! Request Subscribe : [{}] And Save topicInfo : [{}]",topicTarget.getTopicUserEmail(),createdTopic);

                    }else{
                        log.info("Already Make topic (get by DB)Email : {}, Topic : [{}]",topicTarget.getTopicUserEmail(),createdTopic);

                    }

                    tempTopicMap.put(topicTarget.getTopicUserEmail()+"_"+topicTarget.getInqConFlag(),createdTopic);
                }

                topicTarget.setSubReqYn("Y");
                topicTarget.setSubId(createdTopic);
                snsTopicUserMgtRepository.save(topicTarget);
            }
            else{
                log.info("Already Subscribe : [{}] And Save topicInfo : [{}]",topicTarget.getTopicUserEmail(),topicTarget.getSubId());
            }
        }
        log.info("TopicSubs Processor Complete!");
    }

    public void sendAwsSnsEmail(int emailType, EmailContent emailContent){

        try{
            PublishRequest publishRequest = new PublishRequest();

            TbSnsTopicUserMgt topicTarget = emailContent.getTopicTarget();

            if(emailType == GsitmEmailConst.EMAIL_TYPE_SALES){
                publishRequest.setSubject("[영업문의] "+emailContent.getName()+" 님의 영업문의안내 메일입니다.");

                StringBuffer sb = new StringBuffer();
                sb.append("GS ITM 영업문의안내 메일이 도착하였습니다.");
                sb.append("\n\n");
                sb.append("문의자 : "+emailContent.getName());
                sb.append("\n\n");
                sb.append("연락처 : "+emailContent.getPhone());
                sb.append("\n\n");
                sb.append("E-Mail : "+emailContent.getEmail());
                sb.append("\n\n");
                sb.append("문의영역 : "+emailContent.getCategory1());
                sb.append("\n\n");
                sb.append("세부영역 : "+emailContent.getCategory2());
                sb.append("\n\n");
                sb.append("문의내용");
                sb.append("\n");
                sb.append(emailContent.getContent());
                sb.append("\n");
                publishRequest.setMessage(sb.toString());


            }else{
                publishRequest.setSubject("[제보] "+emailContent.getName()+" 님의 제보 메일입니다.");

                StringBuffer sb = new StringBuffer();
                sb.append("GS ITM 제보하기 메일이 도착하였습니다.");
                sb.append("\n\n");
                sb.append("제보자 : "+emailContent.getName());
                sb.append("\n\n");
                sb.append("연락처 : "+emailContent.getPhone());
                sb.append("\n\n");
                sb.append("E-Mail : "+emailContent.getEmail());
                sb.append("\n\n");
                sb.append("제목 : "+emailContent.getTitle());
                sb.append("\n\n");
                sb.append("제보내용");
                sb.append("\n");
                sb.append(emailContent.getContent());
                sb.append("\n\n");
                sb.append("첨부파일(하단의 링크참조)");
                sb.append("\n");
                sb.append(emailContent.getAttachFile());
                sb.append("\n");
                publishRequest.setMessage(sb.toString());
            }
            publishRequest.setTopicArn(topicTarget.getSubId());
            log.info("requestTopic : {}",topicTarget.getSubId());

            PublishResult publish = amazonSNS.publish(publishRequest);
            log.info("Send Email Success! Topic : [{}], MessageId : [{}]",topicTarget.getSubId(),publish.getMessageId());
        }catch (AmazonSNSException e){
            log.error("AmazonSNSException",e);
        }catch (Exception e){
            log.error("Exception",e);
        }
    }

    public void reqSubscribe(String topic, String emailAddr){

        SubscribeRequest subscribeRequest = new SubscribeRequest(topic, "email",emailAddr);
        SubscribeResult subscribe = amazonSNS.subscribe(subscribeRequest);

        log.info("Response : {}",subscribe.getSdkResponseMetadata().getRequestId());

    }

    public String createTopic(String topicName){

        CreateTopicRequest createTopicRequest = new CreateTopicRequest(topicName);
        CreateTopicResult topic = amazonSNS.createTopic(createTopicRequest);
        log.info("CreateTopic topicName : {}, topicArn : {}",topicName,topic.getTopicArn());
        return topic.getTopicArn();
    }

}

