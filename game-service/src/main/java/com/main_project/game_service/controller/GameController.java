package com.main_project.game_service.controller;

import com.main_project.game_service.entity.Game;
import com.main_project.game_service.entity.Platform;
import com.main_project.game_service.service.GameService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class GameController {

    GameService gameService;

    @GetMapping("/games/{gameId}")
    ResponseEntity<Game> findGameById(@PathVariable String gameId) {
        return ResponseEntity.ok().body(gameService.findGameById(gameId));
    }

    @GetMapping("/platforms/{platformId}")
    ResponseEntity<Platform> findPlatformById(@PathVariable String platformId) {
        return ResponseEntity.ok().body(gameService.findPlatformById(platformId));
    }

    @PostMapping("/games/get-all-by-ids")
    ResponseEntity<List<Game>> findGamesByIds(@RequestBody List<String> gameIds) {
        return ResponseEntity.ok().body(gameService.findGamesByIds(gameIds));
    }

    @PostMapping("/platforms/get-all-by-ids")
    ResponseEntity<List<Platform>> findPlatformsByIds(@RequestBody List<String> platformIds) {
        return ResponseEntity.ok().body(gameService.findPlatformsByIds(platformIds));
    }

    @GetMapping("/games/get-all")
    ResponseEntity<List<Game>> findAllGames() {
        return ResponseEntity.ok().body(gameService.findAllGames());
    }

    @GetMapping("/platforms/get-all")
    ResponseEntity<List<Platform>> findAllPlatforms() {
        return ResponseEntity.ok().body(gameService.findAllPlatforms());
    }

}
