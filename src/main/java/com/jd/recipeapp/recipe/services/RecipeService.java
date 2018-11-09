package com.jd.recipeapp.recipe.services;

import com.jd.recipeapp.recipe.domain.Recipe;
import com.jd.recipeapp.recipe.dtos.RecipeDto;
import com.jd.recipeapp.recipe.exceptions.NoPermissionException;
import com.jd.recipeapp.recipe.exceptions.RecipeNotExistException;
import com.jd.recipeapp.recipe.repositories.RecipeRepository;
import com.jd.recipeapp.recipe.rewriters.RecipeDtoToRecipe;
import com.jd.recipeapp.user.domain.User;
import com.jd.recipeapp.user.repository.UserRepository;
import com.jd.recipeapp.user.services.LoggedInUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecipeService {

    private RecipeRepository recipeRepository;
    private LoggedInUser loggedInUser;
    private UserRepository userRepository;

    @Autowired
    public RecipeService(RecipeRepository recipeRepository, LoggedInUser loggedInUser, UserRepository userRepository) {
        this.recipeRepository = recipeRepository;
        this.loggedInUser = loggedInUser;
        this.userRepository = userRepository;
    }

    public Recipe createOrUpdateRecipe(RecipeDto recipeDto) {

        User user = loggedInUser.get();

        Recipe recipe = RecipeDtoToRecipe.rewrite(recipeDto);
        Recipe save = recipeRepository.save(recipe);
        user.getUsersRecipes().add(save);
        save.setUser(user);
        userRepository.save(user);
        return save;
    }

    public Recipe findRecipeById(Long id) {

        return loggedInUser.get()
                .getUsersRecipes()
                .stream()
                .filter(recipe -> recipe.getId().equals(id))
                .findFirst()
                .orElseThrow(() -> new RecipeNotExistException("Przepis o podanym id nie istnieje"));

        //todo better handle with exceptionem
    }


}

