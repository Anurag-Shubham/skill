package com.skillPortal.repo;

import org.skillsportal.api.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User,Integer> {
    void save(com.skillPortal.modal.User user);
    // void save(User user);
}
