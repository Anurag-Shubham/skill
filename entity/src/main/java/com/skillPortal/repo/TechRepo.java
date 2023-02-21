package com.skillPortal.repo;

import com.skillPortal.modal.Tech;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TechRepo extends JpaRepository<Tech,Integer> {
}
