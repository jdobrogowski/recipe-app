package com.jd.recipeapp.user.userExcecptions;

public class IncorrectEmailException extends RuntimeException {

    public IncorrectEmailException(String message) {
        super(message);
    }
}
