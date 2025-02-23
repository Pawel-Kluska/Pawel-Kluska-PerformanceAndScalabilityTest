package com.microservice1.util;

import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

public class Utils {

    public static String runBenchmark(int cpuLoad, int memoryLoad) {
        long startTime = System.currentTimeMillis();

        // Simulate CPU Load
        long cpuResult = cpuIntensiveTask(cpuLoad);

        // Simulate Memory Load
        List<byte[]> memoryList = memoryIntensiveTask(memoryLoad);

        long elapsedTime = System.currentTimeMillis() - startTime;
        return String.format("Benchmark completed in %d ms. CPU Result: %d, Memory Allocated: %d MB",
                elapsedTime, cpuResult, memoryList.size());
    }

    private static long cpuIntensiveTask(int iterations) {
        long result = 0;
        for (int i = 0; i < iterations; i++) {
            result += fibonacci(30); // Arbitrary CPU-intensive calculation
        }
        return result;
    }

    private static List<byte[]> memoryIntensiveTask(int memoryMB) {
        List<byte[]> list = new ArrayList<>();
        for (int i = 0; i < memoryMB; i++) {
            list.add(new byte[1024 * 1024]); // Allocate 1MB chunks
        }
        return list;
    }

    private static long fibonacci(int n) {
        if (n <= 1) return n;
        return fibonacci(n - 1) + fibonacci(n - 2);
    }


}
