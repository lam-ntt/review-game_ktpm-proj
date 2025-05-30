package com.main_project.game_service.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "games")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Game {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    String id;

    String name;

    @Column(length = 5000)
    String summary;

    String cover;
    String trailer;
    String developer;
    String publisher;
    LocalDate releaseDate;

    @ManyToMany
    Set<Genre> genres;

    @ManyToMany
    Set<Platform> platforms;
}
