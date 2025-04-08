package com.example.PaymentsWebApp.dao;

import com.example.PaymentsWebApp.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findByuserName(String userName);
}