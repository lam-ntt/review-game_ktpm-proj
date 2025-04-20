package com.main_project.game_service.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "user-service", url = "http://localhost:8090")
public interface UserServiceClient {

    @GetMapping("/users/aaa")
    String hello();
}

