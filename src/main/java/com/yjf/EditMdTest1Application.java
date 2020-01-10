package com.yjf;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.yjf.dao")
@SpringBootApplication
public class EditMdTest1Application {

    public static void main(String[] args) {
        SpringApplication.run(EditMdTest1Application.class, args);
    }

}
