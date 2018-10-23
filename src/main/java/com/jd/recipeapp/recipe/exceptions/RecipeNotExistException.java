package com.jd.recipeapp.recipe.exceptions;

public class RecipeNotExistException extends RuntimeException {

    public RecipeNotExistException(String message) {
        super(message);
    }
}
