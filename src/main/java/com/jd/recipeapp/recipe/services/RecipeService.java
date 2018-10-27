package com.jd.recipeapp.recipe.services;

import com.jd.recipeapp.recipe.domain.Recipe;
import com.jd.recipeapp.recipe.dtos.RecipeDto;
import com.jd.recipeapp.recipe.exceptions.RecipeNotExistException;
import com.jd.recipeapp.recipe.repositories.RecipeRepository;
import com.jd.recipeapp.recipe.rewriters.RecipeDtoToRecipe;
import com.jd.recipeapp.security.Permission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecipeService {

    private RecipeRepository recipeRepository;
    private Permission permission;

    @Autowired
    public RecipeService(RecipeRepository recipeRepository, Permission permission) {
        this.recipeRepository = recipeRepository;
        this.permission = permission;
    }

    public Recipe createOrUpdateRecipe(RecipeDto recipeDto) {

        Recipe recipe = RecipeDtoToRecipe.rewrite(recipeDto);
        return recipeRepository.save(recipe);
    }

    public Recipe findRecipeById(Long id) {


        return permission.check() //FIXME
                .getUsersRecipes()
                .stream()
                .filter(recipe -> recipe.getId().equals(id))
                .findFirst()
                .orElseThrow(() -> new RecipeNotExistException("Przepis o podanym id nie istnieje"));
    }


}

