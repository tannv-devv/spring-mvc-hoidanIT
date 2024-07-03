package com.example.spring.mvc.service;

import com.example.spring.mvc.domain.User;
import com.example.spring.mvc.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getUserByEmail(String email) {
        return this.userRepository.findOneByEmail(email);
    }

    public User getUserById(Long id) {
        return this.userRepository.findById(id).get();
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }
}
