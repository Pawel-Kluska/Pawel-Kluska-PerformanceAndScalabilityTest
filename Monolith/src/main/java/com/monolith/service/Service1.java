package com.monolith.service;

import com.monolith.response.Response;
import com.monolith.util.Utils;
import org.springframework.stereotype.Service;

@Service
public class Service1 {

    private Service2 service2;

    public Service1(Service2 service2) {
        this.service2 = service2;
    }

    public Response runLoad1(
            int cpuLoad1,
            int memoryLoad1,
            int cpuLoad2,
            int memoryLoad2,
            int cpuLoad3,
            int memoryLoad3
    ) {
        Utils.runBenchmark(cpuLoad1, memoryLoad1);
        System.out.println("-----------------");
        System.out.println("Running benchmark");
        System.out.println("-----------------");
        service2.runLoad2(cpuLoad1,
                memoryLoad1,
                cpuLoad2,
                memoryLoad2,
                cpuLoad3,
                memoryLoad3);
        return new Response();
    }
}
