package com.gsitm.officialweb.config;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.sns.AmazonSNS;
import com.amazonaws.services.sns.AmazonSNSClientBuilder;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Log
@Configuration
public class AwsSnsConfiguration {

    @Value("${spring.aws.sns.accesskey}")
    private String accessKey;
    @Value("${spring.aws.sns.secretKey}")
    private String secretKey;

    @Bean
    public BasicAWSCredentials awsSnsCredentials(){
        log.info("AccessKey : ["+accessKey+"]");
        log.info("SecretKey : ["+secretKey+"]");
        BasicAWSCredentials awsCreds = new BasicAWSCredentials(accessKey,secretKey);
        return awsCreds;
    }

    @Bean
    public AmazonSNS awsSNSClient(){
        AmazonSNS snsBuilder = AmazonSNSClientBuilder.standard()
                .withRegion("ap-northeast-2")
                .withCredentials(new AWSStaticCredentialsProvider(this.awsSnsCredentials()))
                .build();

        return snsBuilder;
    }

}
