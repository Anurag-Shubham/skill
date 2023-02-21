package com.skillPortal.service;

import java.util.Optional;
import java.util.UUID;

import com.skillPortal.modal.User;
import com.skillPortal.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepo userRepository;

    public User createUser(User user) {
        user.setUserId((int) UUID.randomUUID().getMostSignificantBits());
        //userRepository.save(user);
        return user;
    }





}