package com.main_project.statistics_service.controller;


import com.main_project.statistics_service.model.Game;
import com.main_project.statistics_service.model.Platform;
import com.main_project.statistics_service.model.Review;
import com.main_project.statistics_service.model.ReviewStatistics;
import com.main_project.statistics_service.service.StatisticsService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/statistics")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class StatisticsController {

    StatisticsService statisticsService;

    @GetMapping("/test")
    String test(){
        return "test";
    }

    @GetMapping("/general")
    ResponseEntity<ReviewStatistics> getGeneralStats(
            @RequestParam(required = false) String gameId,
            @RequestParam(required = false) String platformId) {
        return ResponseEntity.ok().body(statisticsService.getGeneralStats(gameId, platformId));
    }

    @GetMapping("/top-5-games")
    ResponseEntity<List<Game>> getTop5Games() {
        return ResponseEntity.ok().body(statisticsService.getTop5Games());
    }

    @GetMapping("/top-3-platforms")
    ResponseEntity<List<Platform>> getTop3Platform() {
        return ResponseEntity.ok().body(statisticsService.getTop3Platforms());
    }

    @GetMapping("/details-by-games")
    ResponseEntity<List<ReviewStatistics>> getDetailsStatsByGames(
            @RequestParam(required = false) String from,
            @RequestParam(required = false) String to) {
        return ResponseEntity.ok().body(statisticsService.getDetailsStatsByGames(from, to));
    }

    @GetMapping("/compare")
    ResponseEntity<List<ReviewStatistics>> getCompareStats(@RequestParam String gameIds) {
        return ResponseEntity.ok().body(statisticsService.getCompareStats(gameIds));
    }

}
