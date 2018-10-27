package com.jd.recipeapp.exceptionHandler;

import com.jd.recipeapp.recipe.exceptions.CategoriesNotFound;
import com.jd.recipeapp.recipe.exceptions.NoPermissionException;
import com.jd.recipeapp.recipe.exceptions.RecipeNotExistException;
import com.jd.recipeapp.recipe.exceptions.UniteOfMeasureNotFoundExceptions;
import com.jd.recipeapp.user.userExcecptions.IncorrectEmailException;
import com.jd.recipeapp.user.userExcecptions.IncorrectPasswordException;
import com.jd.recipeapp.user.userExcecptions.UserExistsException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class RecipeAppExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(value = CategoriesNotFound.class)
    public ResponseEntity<Object> handleCategoriesNotFound(WebRequest webRequest, CategoriesNotFound e) {

        return handleExceptionInternal(e, e.getMessage(), null, HttpStatus.NOT_FOUND, webRequest);
    }

    @ExceptionHandler(value = NoPermissionException.class)
    public ResponseEntity<Object> handleNoPermissionException(WebRequest webRequest, NoPermissionException e) {

        return handleExceptionInternal(e, e.getMessage(), null, HttpStatus.NOT_FOUND, webRequest);
    }

    @ExceptionHandler(value = RecipeNotExistException.class)
    public ResponseEntity<Object> handleRecipeNotExistException(WebRequest webRequest, RecipeNotExistException e) {

        return handleExceptionInternal(e, e.getMessage(), null, HttpStatus.NOT_FOUND, webRequest);
    }

    @ExceptionHandler(value = UniteOfMeasureNotFoundExceptions.class)
    public ResponseEntity<Object> handleUniteOfMeasureNotFoundExceptions(WebRequest webRequest, UniteOfMeasureNotFoundExceptions e) {

        return handleExceptionInternal(e, e.getMessage(), null, HttpStatus.NOT_FOUND, webRequest);
    }

    @ExceptionHandler(value = IncorrectEmailException.class)
    public ResponseEntity<Object> handleIncorrectEmailException(WebRequest webRequest, IncorrectEmailException e) {

        return handleExceptionInternal(e, e.getMessage(), null, HttpStatus.NOT_FOUND, webRequest);
    }

    @ExceptionHandler(value = IncorrectPasswordException.class)
    public ResponseEntity<Object> handleIncorrectPasswordException(WebRequest webRequest, IncorrectPasswordException e) {

        return handleExceptionInternal(e, e.getMessage(), null, HttpStatus.NOT_FOUND, webRequest);
    }

    @ExceptionHandler(value = UserExistsException.class)
    public ResponseEntity<Object> handleUserExistsException(WebRequest webRequest, UserExistsException e) {

        return handleExceptionInternal(e, e.getMessage(), null, HttpStatus.NOT_FOUND, webRequest);
    }
}
