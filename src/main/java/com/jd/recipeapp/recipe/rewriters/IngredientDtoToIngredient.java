package com.jd.recipeapp.recipe.rewriters;

import com.jd.recipeapp.recipe.domain.Ingredient;
import com.jd.recipeapp.recipe.dtos.IngredientDto;

public class IngredientDtoToIngredient {

    public static Ingredient rewrite(IngredientDto ingredientDto) {

        if (ingredientDto == null) {
            return null;
        }
        return Ingredient.builder()
                .id(ingredientDto.getId())
                .amount(ingredientDto.getAmount())
                .name(ingredientDto.getName())
                .unitOfMeasure(UniteOfMeasureDtoToUniteOfMeasure.rewrite(ingredientDto.getUnitOfMeasureDto()))
                .build();
    }
}
