package com.microservice1.controller;


import com.microservice1.response.Response;
import com.microservice1.service.Service1;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class AppController {

    private Service1 service1;

    public AppController(Service1 service1) {
        this.service1 = service1;
    }

    @GetMapping("/endpoint")
    public Response getResponse(
            @RequestParam(defaultValue = "10") int cpuLoad1,
            @RequestParam(defaultValue = "50") int memoryLoad1,
            @RequestParam(defaultValue = "10") int cpuLoad2,
            @RequestParam(defaultValue = "50") int memoryLoad2,
            @RequestParam(defaultValue = "10") int cpuLoad3,
            @RequestParam(defaultValue = "50") int memoryLoad3
    ) {
        service1.runLoad1(
                cpuLoad1,
                memoryLoad1,
                cpuLoad2,
                memoryLoad2,
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
