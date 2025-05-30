package com.main_project.statistics_service.client;

import com.main_project.statistics_service.model.Game;
import com.main_project.statistics_service.model.Platform;
import com.main_project.statistics_service.model.Review;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@FeignClient(name = "game-service")
public interface GameServiceClient {

    @GetMapping("/games/{gameId}")
    ResponseEntity<Game> findGameById(@PathVariable String gameId);

    @PostMapping("/games/get-all-by-ids")
    ResponseEntity<List<Game>> findGamesByIds(@RequestBody List<String> gameIds);

    @GetMapping("/games/get-all")
    ResponseEntity<List<Game>> findAllGames();

    @GetMapping("/platforms/{platformId}")
    ResponseEntity<Platform> findPlatformById(@PathVariable String platformId);

    @PostMapping("/platforms/get-all-by-ids")
    ResponseEntity<List<Platform>> findPlatformsByIds(@RequestBody List<String> platformIds);

    @GetMapping("/platforms/get-all")
    ResponseEntity<List<Platform>> findAllPlatforms();


}
