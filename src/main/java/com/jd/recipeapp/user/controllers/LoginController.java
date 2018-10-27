package com.jd.recipeapp.user.controllers;

import com.jd.recipeapp.user.dtos.UserLoginDto;
import com.jd.recipeapp.user.services.LoginService;
import com.jd.recipeapp.security.UserContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
public class LoginController {

    private LoginService loginService;
    private UserContextHolder userContextHolder;

    @Autowired
    public LoginController(LoginService loginService, UserContextHolder userContextHolder) {
        this.loginService = loginService;
        this.userContextHolder = userContextHolder;
    }

    @GetMapping("/home_page")
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
        model.addAttribute("user", userContextHolder.getUserLoggedIn());
        return "loginEffect";
    }

    @RequestMapping(value = "/username", method = RequestMethod.GET)
    @ResponseBody
    public String currentUserName(Principal principal) {
        return principal.getName();
    }
}
