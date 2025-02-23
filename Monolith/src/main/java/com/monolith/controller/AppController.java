package com.monolith.controller;

import com.monolith.response.Response;
import com.monolith.service.Service1;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
        return new Response();
    }
}
