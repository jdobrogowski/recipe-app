package com.jd.recipeapp.user.validation;

import com.jd.recipeapp.user.dtos.UserRegistrationDto;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PasswordMatchesValidator implements ConstraintValidator<PasswordMatches, UserRegistrationDto> {
    public void initialize(PasswordMatches constraint) {
    }

    public boolean isValid(UserRegistrationDto userDto, ConstraintValidatorContext context) {

        return userDto.getPassword().equals(userDto.getMatchingPassword());
    }
}
