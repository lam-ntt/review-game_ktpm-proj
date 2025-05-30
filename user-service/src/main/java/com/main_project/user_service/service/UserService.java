package com.main_project.user_service.service;

import com.main_project.user_service.entity.User;
import com.main_project.user_service.exceptions.enums.ErrorCode;
import com.main_project.user_service.exceptions.AppException;
import com.main_project.user_service.repository.UserRepository;
import com.nimbusds.jose.JWSVerifier;
import com.nimbusds.jose.crypto.RSASSAVerifier;
import com.nimbusds.jwt.SignedJWT;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.experimental.NonFinal;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class UserService {

    UserRepository userRepository;

//    public User create(User user) {
//        boolean isExisted = userRepository.existsByUsername(user.getUsername());
//        if(isExisted) {
//            throw new AppException(ErrorCode.USER_EXISTED);
//        }
//
//        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//        user.setPassword(passwordEncoder.encode(user.getPassword()));
//        user.setIsAdmin(0);
//
//        User savedUser = userRepository.save(user);
//        return savedUser;
//    }

    public User valid(User user) {
        var existedUser = userRepository.findByUsername(user.getUsername());
        if(!existedUser.isPresent()) {
            throw new AppException(ErrorCode.USER_NOT_EXISTED);
        }

        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        boolean isValid = passwordEncoder
                .matches(user.getPassword(), existedUser.get().getPassword());
        if(!isValid) {
            throw new AppException(ErrorCode.INVALID_CREDENTIALS);
        }

        return existedUser.get();
    }

    public User getById(String id) {
        User user = userRepository
                .findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));
        return user;
    }
}
