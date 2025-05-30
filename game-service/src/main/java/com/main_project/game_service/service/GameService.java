package com.main_project.game_service.service;

import com.main_project.game_service.entity.Game;
import com.main_project.game_service.entity.Genre;
import com.main_project.game_service.entity.Platform;
import com.main_project.game_service.exceptions.AppException;
import com.main_project.game_service.exceptions.enums.ErrorCode;
import com.main_project.game_service.repository.GameRepository;
import com.main_project.game_service.repository.GenreRepository;
import com.main_project.game_service.repository.PlatformRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class GameService {

    PlatformRepository platformRepository;
    GameRepository gameRepository;

    public Game findGameById(String gameId) {
        return gameRepository
                .findById(gameId)
                .orElseThrow(() -> new AppException(ErrorCode.GAME_NOT_EXISTED));
    }

    public Platform findPlatformById(String platformId) {
        return platformRepository
                .findById(platformId)
                .orElseThrow(() -> new AppException(ErrorCode.PLATFORM_NOT_EXISTED));
    }


    public List<Game> findGamesByIds(List<String> gameIds) {
        return gameRepository.findAllById(gameIds);
    }

    public List<Platform> findPlatformsByIds(List<String> platformIds) {
        return platformRepository.findAllById(platformIds);
    }

    public List<Game> findAllGames() {
        return gameRepository.findAll();
    }

    public List<Platform> findAllPlatforms() {
        return platformRepository.findAll();
    }
}
