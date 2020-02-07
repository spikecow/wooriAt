package com.gsitm.officialweb.common.utility.aws;


import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.File;

/** ========================================================================================
 * @Package Name   : com.gsitm.officialweb.common.utility.aws
 * @FileName  : AmazonS3Client.java
 * @Date      : 2019. 10. 25.
 * @Author    : HJJANG
 * ========================================================================================
 * 수정일                                         작성자                                                     내용
 * ----------------------------------------------------------------------------------------
 * 2019. 10. 25.               HJJANG                                                최초 생성
 * ========================================================================================
 */

@Slf4j
@RequiredArgsConstructor
@Component
public class AmazonS3Client {

    private final AmazonS3 amazonS3;

    private final String HTTP_PROTOCOL = "http://";
    private final String SLASH = "/";
    @Value("${spring.aws.s3.bucket}")
    private String bucketName;

    public String uploadAWSS3File(String uploadFileUrl, File file){
        PutObjectRequest putObjectRequest =
                new PutObjectRequest(bucketName, uploadFileUrl, file);
        putObjectRequest.setCannedAcl(CannedAccessControlList.PublicRead); // file permission

        amazonS3.putObject(putObjectRequest);

        String imgUrl = HTTP_PROTOCOL+bucketName+SLASH+uploadFileUrl;

        return imgUrl;
    }
}

