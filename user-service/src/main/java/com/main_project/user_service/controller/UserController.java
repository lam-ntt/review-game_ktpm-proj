package com.main_project.user_service.controller;

import com.main_project.user_service.entity.User;
import com.main_project.user_service.service.UserService;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping("/hello")
    String hello() {
        return "Hello";
    }

    @PostMapping
    ResponseEntity<User> create(@RequestBody User user) {
        return ResponseEntity.ok(userService.create(user));
    }

    @GetMapping
    ResponseEntity<List<User>> getAll() {
        return ResponseEntity.ok(userService.getAll());
    }
}
