package com.microservice2.service;

import com.microservice2.response.Response;
import com.microservice2.util.Utils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.concurrent.atomic.AtomicInteger;

@Service
public class Service2 {

    @Value("${host1}")
    private String host1;

    @Value("${host2}")
    private String host2;

    @Value("${host3}")
    private String host3;

    private final RestTemplate restTemplate = new RestTemplate();
    private final AtomicInteger requestCounter = new AtomicInteger(0);

    public Response runLoad2(
            int cpuLoad2,
            int memoryLoad2,
            int cpuLoad3,
            int memoryLoad3
    ) {
        Utils.runBenchmark(cpuLoad2, memoryLoad2);

        String selectedHost = getNextHost();
        String url = UriComponentsBuilder.fromHttpUrl(selectedHost)
                .path("/endpoint")  // Append endpoint
                .queryParam("cpuLoad3", cpuLoad3)
                .queryParam("memoryLoad3", memoryLoad3)
                .toUriString();

        System.out.println("--------------------------");
        System.out.println("Hitting " + selectedHost);
        System.out.println("--------------------------");        restTemplate.getForObject(url, Response.class);
        return new Response();
    }

    private String getNextHost() {
        if (host2.equals("invalid") || host3.equals("invalid"))
            return host1;
        String[] hosts = {host1, host2, host3};
        int index = requestCounter.getAndIncrement() % hosts.length;
        return hosts[index];
    }

}
