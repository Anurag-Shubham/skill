package com.skillPortal.controller;

import com.skillPortal.modal.User;
import com.skillPortal.service.UserService;
import org.skillsportal.api.UserApi;


import org.skillsportal.api.model.Tech;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController implements UserApi {
    @Autowired
    private UserService userService;

    public ResponseEntity<User> createUser(User user) {
        User createdUser = userService.createUser(user);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdUser);
    }

    @Override
    public ResponseEntity<org.skillsportal.api.model.User> createUser(org.skillsportal.api.model.User user) {
        return null;
    }

    @Override
    public ResponseEntity<Void> deleteUser(Integer userId) {
        return null;
    }

    @Override
    public ResponseEntity<org.skillsportal.api.model.User> getUserByName(Integer userId) {

        return null;
    }

    @Override
    public ResponseEntity<List<org.skillsportal.api.model.User>> getUsers() {
        return null;
    }

    @Override
    public ResponseEntity<org.skillsportal.api.model.User> updateUser(Integer userId, org.skillsportal.api.model.User user) {
        return null;
    }


    public ResponseEntity<User> updateUser(Integer userId, User user) {
        return null;
    }

    @Override
    public ResponseEntity<List<org.skillsportal.api.model.User>> userTechTechNameGet(String techName) {
        return null;
    }

    @Override
    public ResponseEntity<List<Tech>> userUserIdTechGet(Long userId) {
        return null;
    }
}
