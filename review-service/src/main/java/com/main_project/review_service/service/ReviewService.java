package com.main_project.review_service.service;

import com.main_project.review_service.entity.Review;
import com.main_project.review_service.repository.ReviewRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class ReviewService {

    ReviewRepository reviewRepository;

    public List<Review> getAll(String gameId, String platformId, String from, String to) {
        List<Review> reviews = reviewRepository.findAll();

        Stream<Review> reviewStream = reviews.stream();

        if (gameId != null) {
            reviewStream = reviewStream
                    .filter(review -> review.getGameId().equals(gameId));
        }
        if (platformId != null) {
            reviewStream = reviewStream
                    .filter(review -> review.getPlatformId().equals(platformId));
        }

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate start = (from != null) ? LocalDate.parse(from, formatter) : LocalDate.MIN;
        LocalDate end = (to != null) ? LocalDate.parse(to, formatter) : LocalDate.MAX;
        reviewStream = reviewStream
                .filter(review ->
                        review.getTimeCreated() != null
                                && !review.getTimeCreated().isBefore(start)
                                && !review.getTimeCreated().isAfter(end)
        );

        return reviewStream
//                .map(review -> convertToFullVersion(review, true, true, true))
                .collect(Collectors.toList());
    }

//    public List<Review> getAllByGameId(String gameId) {
//        return reviewRepository
//                .findByGameId(gameId)
//                .stream()
////                .map(review -> convertToFullVersion(
////                        review, true, false, true))
//                .collect(Collectors.toList());
//    }

//    private Review convertToFullVersion(
//            Review review, boolean getUser, boolean getGame, boolean getPlatform) {
//        if (getUser) {
//            review.setUser(userServiceClient
//                    .getById(review.getUserId()).getBody());
//        }
//        if (getGame) {
//            review.setGame(gameServiceClient
//                    .findGameById(review.getGameId()).getBody());
//        }
//        if (getPlatform) {
//            review.setPlatform(gameServiceClient
//                    .findPlatformById(review.getPlatformId()).getBody());
//        }
//
//        return review;
//    }
}
