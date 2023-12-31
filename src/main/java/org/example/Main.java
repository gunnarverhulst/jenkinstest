package org.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class Main {


    @GetMapping("/api")
    public String helloWorld(){
        return "Hello Gunz!!";
    }

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}