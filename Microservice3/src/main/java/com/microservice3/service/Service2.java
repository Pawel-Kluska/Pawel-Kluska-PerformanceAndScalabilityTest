package com.microservice3.service;

import com.microservice3.response.Response;
import com.microservice3.util.Utils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class Service2 {

    public Response runLoad3(
            int cpuLoad3,
            int memoryLoad3
    ) {
        Utils.runBenchmark(cpuLoad3, memoryLoad3);
        return new Response();
    }

}
