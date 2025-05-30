package com.main_project.statistics_service.client;

import com.main_project.statistics_service.model.Review;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@FeignClient(name = "review-service")
public interface ReviewServiceClient {

    @GetMapping("/reviews")
    ResponseEntity<List<Review>> getAll(
            @RequestParam(required = false) String gameId,
            @RequestParam(required = false) String platformId,
            @RequestParam(required = false) String from,
            @RequestParam(required = false) String to);
}
