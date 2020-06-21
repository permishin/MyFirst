package org.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ServingWebContentApplication {
private String a = "ab";
    public static void main(String[] args) {
        SpringApplication.run(ServingWebContentApplication.class, args);
    }

}