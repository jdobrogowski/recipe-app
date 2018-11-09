package com.jd.recipeapp.user.controllers;

import com.jd.recipeapp.user.dtos.UserRegistrationDto;
import com.jd.recipeapp.user.services.RegistrationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
@Slf4j
public class RegistrationController {

    private RegistrationService registrationServicel;

    @Autowired
    public RegistrationController(RegistrationService registrationServicel) {
        this.registrationServicel = registrationServicel;
    }

    @GetMapping("/registration")
    public String registrationForm(Model model) {

        model.addAttribute("user", new UserRegistrationDto());
        return "user/registration/registration";
    }

    @PostMapping("/registration")
    public String registrationEffect(@Valid @ModelAttribute("user") UserRegistrationDto userRegistration, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            bindingResult.getAllErrors()
                    .forEach(objectError -> log.error(objectError.toString()));
            return "user/registration/registration";
        }

        registrationServicel.registerUser(userRegistration);
        model.addAttribute("userRegistration", userRegistration);
        return "user/registration/registrationEffect";
    }
}

