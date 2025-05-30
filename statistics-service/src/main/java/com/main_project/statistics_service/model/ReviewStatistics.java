package com.main_project.statistics_service.model;

import lombok.*;

import java.util.List;
import java.util.Map;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReviewStatistics {
    Game game;
    List<Review> reviews;
    int totalNumberOfReviews;
    float averageScore;
    int percentageOfPositiveReviews;
    int percentageOfNegativeReviews;
    int percentageOfOtherReviews;
}
