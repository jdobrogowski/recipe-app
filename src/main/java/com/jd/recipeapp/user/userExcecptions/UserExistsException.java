package com.jd.recipeapp.user.userExcecptions;

public class UserExistsException extends RuntimeException {

    public UserExistsException(String message) {
        super(message);
    }
}
