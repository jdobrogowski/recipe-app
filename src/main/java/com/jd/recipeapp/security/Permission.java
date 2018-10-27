package com.jd.recipeapp.security;

import com.jd.recipeapp.recipe.exceptions.NoPermissionException;
import com.jd.recipeapp.user.domain.User;
import com.jd.recipeapp.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class Permission { //FIXME

    private UserContextHolder userContextHolder;
    private UserRepository userRepository;

    @Autowired
    public Permission(UserContextHolder userContextHolder, UserRepository userRepository) {
        this.userContextHolder = userContextHolder;
        this.userRepository = userRepository;
    }

    public User check() {

        Optional<User> userByEmail = userRepository.findUserByEmail(userContextHolder.getUserLoggedIn());
        if (!userByEmail.isPresent()) {
            throw new NoPermissionException("Brak Uprawnien");
        }
        return userByEmail.get();
    }
}
