package com.poly.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class MgearApplication {

	public static void main(String[] args) {
		SpringApplication.run(MgearApplication.class, args);
	}

}
