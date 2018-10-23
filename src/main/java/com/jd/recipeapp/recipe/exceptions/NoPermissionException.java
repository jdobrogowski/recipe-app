package com.jd.recipeapp.recipe.exceptions;

public class NoPermissionException extends RuntimeException {

    public NoPermissionException(String message) {
        super(message);
    }
}
