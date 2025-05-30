package com.main_project.statistics_service.model;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Game {
    String id;
    String name;
    String summary;
    String cover;
    String trailer;
    String developer;
    String publisher;
    LocalDate releaseDate;
    Set<Genre> genres;
    Set<Platform> platforms;
}
