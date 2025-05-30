package com.main_project.statistics_service.model;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Review {
    String id;
    String userId;
    String gameId;
    String platformId;
    float score;
    String content;
    int type;
    LocalDate timeCreated;

    Game game;
    Platform platform;
    User user;
}
