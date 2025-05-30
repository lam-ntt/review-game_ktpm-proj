package com.main_project.user_service.controller;

import com.main_project.user_service.entity.User;
import com.main_project.user_service.service.UserService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class UserController {

    UserService userService;

    @GetMapping("/test")
    String test() {
        return "test";
    }

    // For api gateway when login user
    @PostMapping("/valid")
    ResponseEntity<User> valid(@RequestBody User user) {
        return ResponseEntity.ok(userService.valid(user));
    }

    // For review service to get user info
    @GetMapping("/{userId}")
    ResponseEntity<User> getById(@PathVariable String userId) {
        return ResponseEntity.ok(userService.getById(userId));
    }
}
