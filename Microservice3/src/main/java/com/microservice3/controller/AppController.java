package com.microservice3.controller;


import com.microservice3.response.Response;
import com.microservice3.service.Service2;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class AppController {

    private Service2 service2;

    public AppController(Service2 service2) {
        this.service2 = service2;
    }

    @GetMapping("/endpoint")
    public Response getResponse(
            @RequestParam(defaultValue = "10") int cpuLoad3,
            @RequestParam(defaultValue = "50") int memoryLoad3
    ) {
        service2.runLoad3(
                cpuLoad3,
                memoryLoad3
        );
        Random random = new Random();

        Response response = new Response(
                random.nextInt(1000), // Random ID
                "John" + random.nextInt(100), // Randomized first name
                "Doe" + random.nextInt(100),  // Randomized last name
                "user" + random.nextInt(100) + "@example.com", // Random email
                random.nextInt(80) + 18 // Random age between 18-97
        );
        return response;
    }
}
