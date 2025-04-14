package com.example.PaymentsWebApp.dao;

import com.example.PaymentsWebApp.Entity.TransactionEntity;
import com.example.PaymentsWebApp.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface TransactionRepository extends JpaRepository<TransactionEntity, Integer> {
    List<TransactionEntity> findByUser(UserEntity user);
}
