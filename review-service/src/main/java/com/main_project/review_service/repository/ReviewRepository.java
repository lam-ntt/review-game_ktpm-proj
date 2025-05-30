package com.main_project.review_service.repository;

import com.main_project.review_service.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, String> {
    List<Review> findByGameIdAndPlatformId(String gameId, String platformId);

    List<Review> findByGameId(String gameId);
}
