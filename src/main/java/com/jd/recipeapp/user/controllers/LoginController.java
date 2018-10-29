package com.jd.recipeapp.user.controllers;

import com.jd.recipeapp.security.UserContextHolder;
import com.jd.recipeapp.user.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    private LoginService loginService;
    private UserContextHolder userContextHolder;
   // private MyUserDetailsService myUserDetailsService;

    @Autowired
    public LoginController(LoginService loginService, UserContextHolder userContextHolder) {
        this.loginService = loginService;
        this.userContextHolder = userContextHolder;
    //    this.myUserDetailsService = myUserDetailsService;
    }


    @GetMapping("/home_page")
    public String homepage() {

        return "index";
    }

    @GetMapping("/login")
    public String loginForm() {

     //   model.addAttribute("user", new UserLoginDto());
        return "login";
    }

//    @PostMapping("/login")
//    public String login(@ModelAttribute UserLoginDto user, Model model) {
//
//        loginService.logInUser(user);
//        model.addAttribute("user", myUserDetailsService.loadUserByUsername(user.getEmail()).getUsername());
//        return "loginEffect";
//    }
}
