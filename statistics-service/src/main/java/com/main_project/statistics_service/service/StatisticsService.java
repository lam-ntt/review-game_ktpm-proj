package com.main_project.statistics_service.service;

import com.main_project.statistics_service.client.GameServiceClient;
import com.main_project.statistics_service.client.ReviewServiceClient;
import com.main_project.statistics_service.client.UserServiceClient;
import com.main_project.statistics_service.model.Game;
import com.main_project.statistics_service.model.Platform;
import com.main_project.statistics_service.model.Review;
import com.main_project.statistics_service.model.ReviewStatistics;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class StatisticsService {

    ReviewServiceClient reviewServiceClient;
    GameServiceClient gameServiceClient;
    UserServiceClient userServiceClient;

    public ReviewStatistics getGeneralStats(
            String gameId, String platformId) {

        List<Review> reviews = reviewServiceClient
                .getAll(gameId, platformId, null, null)
                .getBody()
                .stream().map(review ->
                        convertReviewToFullVersion(review, true, true, true))
                .collect(Collectors.toList());

        Game game = null;
        if (gameId != null) {
            game = gameServiceClient.findGameById(gameId).getBody();
        }

        ReviewStatistics reviewStatistics = calculateStatistics(reviews);
        reviewStatistics.setGame(game);
        reviewStatistics.setReviews(reviews);
        return  reviewStatistics;
    }

    public List<Game> getTop5Games() {
        List<Game> allGames = gameServiceClient.findAllGames().getBody();
        List<Review> allReviews = reviewServiceClient
                .getAll(null, "0", null, null)
                .getBody();

        if (allGames == null) return Collections.emptyList();
        if (allReviews == null) allReviews = Collections.emptyList();

        Map<String, Double> gameAverageScores = new HashMap<>();

        for (Game game : allGames) {
            List<Review> reviewsForGame = allReviews.stream()
                    .filter(review -> review.getGameId().equals(game.getId()))
                    .collect(Collectors.toList());

            double averageScore = reviewsForGame.stream()
                    .mapToDouble(Review::getScore)
                    .average()
                    .orElse(0.0);

            gameAverageScores.put(game.getId(), averageScore);
        }

        return allGames.stream()
                .sorted((game1, game2) -> Double.compare(
                        gameAverageScores.get(game2.getId()),
                        gameAverageScores.get(game1.getId())))
                .limit(5)
                .collect(Collectors.toList());
    }


    public List<Platform> getTop3Platforms() {
        List<Platform> allPlatforms = gameServiceClient.findAllPlatforms().getBody();
        List<Review> allReviews = reviewServiceClient
                .getAll(null, "0", null, null)
                .getBody();

        if (allPlatforms == null) return Collections.emptyList();
        if (allReviews == null) allReviews = Collections.emptyList();

        Map<String, Double> platformAverageScores = new HashMap<>();

        for (Platform platform : allPlatforms) {
            List<Review> reviewsForPlatform = allReviews.stream()
                    .filter(review -> review.getPlatformId().equals(platform.getId()))
                    .collect(Collectors.toList());

            double averageScore = reviewsForPlatform.stream()
                    .mapToDouble(Review::getScore)
                    .average()
                    .orElse(0.0);

            platformAverageScores.put(platform.getId(), averageScore);
        }

        return allPlatforms.stream()
                .sorted((platform1, platform2) -> Double.compare(
                        platformAverageScores.get(platform2.getId()),
                        platformAverageScores.get(platform1.getId())))
                .limit(3)
                .collect(Collectors.toList());
    }


    public List<ReviewStatistics> getDetailsStatsByGames(String from, String to) {
        List<Game> allGames = gameServiceClient.findAllGames().getBody();
        List<Review> allReviews = reviewServiceClient
                .getAll(null, null, from, to)
                .getBody();

        if (allGames == null) return Collections.emptyList();
        if (allReviews == null) allReviews = Collections.emptyList();

        Map<String, List<Review>> reviewsByGameId = allReviews.stream()
                .collect(Collectors.groupingBy(Review::getGameId));

        return allGames.stream()
                .map(game -> {
                    List<Review> reviewsForGame = reviewsByGameId
                            .getOrDefault(game.getId(), Collections.emptyList());

                    ReviewStatistics reviewStatistics = calculateStatistics(reviewsForGame);
                    reviewStatistics.setGame(game);
                    return reviewStatistics;

                })
                .sorted(Comparator.comparingDouble(ReviewStatistics::getAverageScore).reversed())
                .collect(Collectors.toList());
    }

    public List<ReviewStatistics> getCompareStats(String gameIdList) {
        List<String> gameIds = Arrays.asList(gameIdList.split(","));

        List<Game> targetGames = gameServiceClient.findGamesByIds(gameIds).getBody();
        List<Review> allReviews = reviewServiceClient
                .getAll(null, null, null, null)
                .getBody();

        Map<String, List<Review>> reviewsByGameId = allReviews.stream()
                .filter(review -> gameIds.contains(review.getGameId()))
                .collect(Collectors.groupingBy(Review::getGameId));

        return targetGames.stream()
                .map(game -> {
                    List<Review> reviewsForGame = reviewsByGameId
                            .getOrDefault(game.getId(), Collections.emptyList());

                    ReviewStatistics reviewStatistics = calculateStatistics(reviewsForGame);
                    reviewStatistics.setGame(game);
                    return reviewStatistics;

                })
                .collect(Collectors.toList());
    }


    public ReviewStatistics calculateStatistics(List<Review> reviews) {
        if (reviews.size() == 0) {
            return new ReviewStatistics(
                    null,
                    null,
                    0,
                    0,
                    0,
                    0,
                    0
            );
        }

        int totalNumberOfReviews = reviews.size();
        float averageScore = (float) reviews
                .stream()
                .mapToDouble(Review::getScore).sum() / totalNumberOfReviews;

        float percentageOfPositiveReviews = (float) reviews
                .stream()
                .filter(review -> review.getType() == 1)
                .collect(Collectors.toList())
                .size() / totalNumberOfReviews;

        float percentageOfNegativeReviews = (float) reviews
                .stream()
                .filter(review -> review.getType() == 0)
                .collect(Collectors.toList())
                .size() / totalNumberOfReviews;

        float percentageOfOtherReviews = 1
                - percentageOfPositiveReviews
                - percentageOfNegativeReviews;

        return new ReviewStatistics(
                null,
                null,
                totalNumberOfReviews,
                averageScore,
                (int) (percentageOfPositiveReviews * 100),
                (int) (percentageOfNegativeReviews * 100),
                (int) (percentageOfOtherReviews * 100)
        );
    }

    private Review convertReviewToFullVersion(
            Review review, boolean getUser, boolean getGame, boolean getPlatform) {
        if (getUser) {
            review.setUser(userServiceClient
                    .getById(review.getUserId()).getBody());
        }
        if (getGame) {
            review.setGame(gameServiceClient
                    .findGameById(review.getGameId()).getBody());
        }
        if (getPlatform) {
            review.setPlatform(gameServiceClient
                    .findPlatformById(review.getPlatformId()).getBody());
        }

        return review;
    }
}
