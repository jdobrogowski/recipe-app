package com.jd.recipeapp.user.services;

import com.jd.recipeapp.user.domain.User;
import com.jd.recipeapp.user.dtos.UserLoginDto;
import com.jd.recipeapp.user.repository.UserRepository;
import com.jd.recipeapp.user.userExcecptions.IncorrectEmailException;
import com.jd.recipeapp.user.userExcecptions.IncorrectPasswordException;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class LoginService {

    private UserRepository userRepository;
    private PasswordEncoder passwordEncoder;

    @Autowired
    public LoginService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public void logInUser(UserLoginDto userLoginDto) {

        Optional<User> userByEmail = userRepository.findUserByEmail(userLoginDto.getEmail());
        if (!userByEmail.isPresent()) {
            throw new IncorrectEmailException("Incorrect email");
        }
        User user = userByEmail.get();
        if (!passwordEncoder.matches(userLoginDto.getPassword().trim(), user.getPasswordHash())) {
            throw new IncorrectPasswordException("Incorrect password");
        }

    }
}
