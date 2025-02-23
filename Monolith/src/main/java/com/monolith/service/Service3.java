package com.monolith.service;

import com.monolith.response.Response;
import com.monolith.util.Utils;
import org.springframework.stereotype.Service;

@Service
public class Service3 {

    public Response runLoad1(
            int cpuLoad1,
            int memoryLoad1,
            int cpuLoad2,
            int memoryLoad2,
            int cpuLoad3,
            int memoryLoad3
    ) {
        Utils.runBenchmark(cpuLoad3, memoryLoad3);
        return new Response();
    }
}
