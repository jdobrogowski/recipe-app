package com.jd.recipeapp.user.controllers;

import com.jd.recipeapp.user.dtos.UserLoginDto;
import com.jd.recipeapp.user.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

    private LoginService loginService;

    @Autowired
    public LoginController(LoginService loginService) {
        this.loginService = loginService;
    }

    @GetMapping("/")
    public String homepage() {

        return "index";
    }

    @GetMapping("/login")
    public String loginForm(Model model) {

        model.addAttribute("user", new UserLoginDto());
        return "login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute UserLoginDto user, Model model) {

        loginService.logInUser(user);
        model.addAttribute("user", user.getEmail());
        return "loginEffect";
    }
}
