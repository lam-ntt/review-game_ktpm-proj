package com.main_project.user_service.controller;

import com.main_project.user_service.entity.User;
import com.main_project.user_service.service.UserService;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping("/aaa")
    String hello() {
        return "aaa";
    }

    @PostMapping
    ResponseEntity<User> create(@RequestBody User user) {
        System.out.println("Got it");
        return ResponseEntity.ok(userService.create(user));
    }
}
