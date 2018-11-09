package com.jd.recipeapp.user.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/home_page")
    public String homepage() {
        return "index";
    }

    @GetMapping("/login")
    public String loginForm() {
        return "user/login/login";
    }

    @GetMapping("/loginEffect")
    public String loginEffect() {
        return "user/login/loginEffect";
    }
}
