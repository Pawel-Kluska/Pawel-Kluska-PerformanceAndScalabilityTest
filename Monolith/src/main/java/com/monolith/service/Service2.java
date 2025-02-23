package com.monolith.service;

import com.monolith.response.Response;
import com.monolith.util.Utils;
import org.springframework.stereotype.Service;

@Service
public class Service2 {

    private Service3 service3;

    public Service2(Service3 service3) {
        this.service3 = service3;
    }

    public Response runLoad2(
            int cpuLoad1,
            int memoryLoad1,
            int cpuLoad2,
            int memoryLoad2,
            int cpuLoad3,
            int memoryLoad3
    ) {
        Utils.runBenchmark(cpuLoad2, memoryLoad2);
        service3.runLoad1(cpuLoad1,
                memoryLoad1,
                cpuLoad2,
                memoryLoad2,
                cpuLoad3,
                memoryLoad3);
        return new Response();
    }
}
