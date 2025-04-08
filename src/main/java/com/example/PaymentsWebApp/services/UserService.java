package com.example.PaymentsWebApp.services;

import com.example.PaymentsWebApp.Entity.UserEntity;
import com.example.PaymentsWebApp.dao.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public boolean registerUser(UserEntity user) {
        if (userRepository.findByuserName(user.getUserName()) != null) {
            return false; // User already exists
        }
        else {
        userRepository.save(user);}
        return true;
    }

    public UserEntity validateUser(String username, String password) {
        UserEntity user = userRepository.findByuserName(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}
