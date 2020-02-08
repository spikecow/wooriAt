package com.wooriat.officialweb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


/**
 * @WebFilter 를 사용하기 위한 어노테이션
 */
@ServletComponentScan
@SpringBootApplication
public class OfficialwebApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(OfficialwebApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(OfficialwebApplication.class);
//		return super.configure(builder);
	}
}
