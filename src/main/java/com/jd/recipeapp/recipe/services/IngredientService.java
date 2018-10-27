package com.jd.recipeapp.recipe.services;

import com.jd.recipeapp.recipe.domain.Ingredient;
import com.jd.recipeapp.recipe.dtos.IngredientDto;
import com.jd.recipeapp.recipe.repositories.IngredientRepository;
import com.jd.recipeapp.recipe.rewriters.IngredientDtoToIngredient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IngredientService {

    private IngredientRepository ingredientRepository;

    @Autowired
    public IngredientService(IngredientRepository ingredientRepository) {
        this.ingredientRepository = ingredientRepository;
    }

    public Ingredient createOrUpdateIngredient(IngredientDto ingredientDto) {

        Ingredient ingredient = IngredientDtoToIngredient.rewrite(ingredientDto);
        return ingredientRepository.save(ingredient);
    }
}

