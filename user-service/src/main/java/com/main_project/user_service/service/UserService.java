package com.main_project.user_service.service;

import com.main_project.user_service.entity.User;
import com.main_project.user_service.enums.ErrorCode;
import com.main_project.user_service.exceptions.AppException;
import com.main_project.user_service.repository.UserRepository;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserService {
    @Autowired
    UserRepository userRepository;

    public User create(User user) {
        boolean isExisted = userRepository.existsByUsername(user.getUsername());
        if(isExisted) {
            throw new AppException(ErrorCode.USER_EXISTED);
        }

        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        User savedUser = userRepository.save(user);
        return savedUser;
    }
}
