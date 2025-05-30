package com.main_project.review_service.controller;

import com.main_project.review_service.entity.Review;
import com.main_project.review_service.service.ReviewService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@RestController
@RequestMapping("/reviews")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class ReviewController {

    ReviewService reviewService;

    @GetMapping("/test")
    String test() {
        return "test";
    }

    @GetMapping()
    ResponseEntity<List<Review>> getAll(
            @RequestParam(required = false) String gameId,
            @RequestParam(required = false) String platformId,
            @RequestParam(required = false) String from,
            @RequestParam(required = false) String to) {
        return ResponseEntity.ok().body(reviewService.getAll(gameId, platformId, from, to));
    }

//    @GetMapping("/get-all-by-game-id/{gameId}")
//    ResponseEntity<List<Review>> getAllByGameId(@PathVariable String gameId) {
//        return ResponseEntity.ok().body(reviewService.getAllByGameId(gameId));
//    }
}
