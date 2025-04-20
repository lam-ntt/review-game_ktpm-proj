package com.main_project.game_service.controller;

import com.main_project.game_service.client.UserServiceClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/games")
public class GameController {

    @Autowired
    UserServiceClient userServiceClient;

    @GetMapping
    String hello() {
        return userServiceClient.hello();
//        return "Game on";
    }
}
