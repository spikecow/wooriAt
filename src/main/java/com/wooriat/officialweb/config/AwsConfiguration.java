package com.gsitm.officialweb.config;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AwsConfiguration {

    @Value("${spring.aws.s3.accesskey}")
    private String accessKey;
    @Value("${spring.aws.s3.secretKey}")
    private String secretKey;

    @Bean
    public BasicAWSCredentials awsCredentials(){
        BasicAWSCredentials awsCreds = new BasicAWSCredentials(accessKey,secretKey);
        return awsCreds;
    }

    @Bean
    public AmazonS3 awsS3Client(){
        AmazonS3 s3Builder = AmazonS3ClientBuilder.standard()
                .withRegion("ap-northeast-2")
                .withCredentials(new AWSStaticCredentialsProvider(this.awsCredentials()))
                .build();

        return s3Builder;
    }

}
