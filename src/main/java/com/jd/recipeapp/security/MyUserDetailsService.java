package com.jd.recipeapp.security;

import com.jd.recipeapp.user.domain.User;
import com.jd.recipeapp.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

//@Service
//public class MyUserDetailsService implements UserDetailsService {
//
//    @Autowired
//    private UserRepository userRepository;
//
//    @Override
//    public UserDetails loadUserByUsername(String username) {
//        Optional<User> userByEmail = userRepository.findUserByEmail(username);
//        if (!userByEmail.isPresent()) {
//            throw new UsernameNotFoundException(username);
//        }
//        return new MyUserPrincipal(userByEmail.get());
//    }
//}