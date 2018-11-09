package com.jd.recipeapp.user.services;

import com.jd.recipeapp.recipe.exceptions.NoPermissionException;
import com.jd.recipeapp.security.UserContextHolder;
import com.jd.recipeapp.user.domain.User;
import com.jd.recipeapp.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class LoggedInUser {

    private UserContextHolder userContextHolder;
    private UserRepository userRepository;

    @Autowired
    public LoggedInUser(UserContextHolder userContextHolder, UserRepository userRepository) {
        this.userContextHolder = userContextHolder;
        this.userRepository = userRepository;
    }

    public User get() {

        Optional<User> userByEmail = userRepository.findUserByEmail(userContextHolder.getUserLoggedIn());
        if (!userByEmail.isPresent()) {
            throw new NoPermissionException("Brak Uprawnien");
        }
        return userByEmail.get();
    }
}
