package com.jd.recipeapp.recipe.rewriters;

import com.jd.recipeapp.recipe.domain.Recipe;
import com.jd.recipeapp.recipe.dtos.RecipeDto;

public class RecipeDtoToRecipe {

    public static Recipe rewrite(RecipeDto recipeDto) {

        if (recipeDto == null) {

            return null;
        }

        Recipe recipe = Recipe.builder()
                .id(recipeDto.getId())
                .description(recipeDto.getDescription())
                .prepTime(recipeDto.getPrepTime())
                .cookTime(recipeDto.getCookTime())
                .servings(recipeDto.getServings())
                .url(recipeDto.getUrl())
                .difficulty(recipeDto.getDifficulty())
                .note(NoteDtoToNote.rewrite(recipeDto.getNoteDto()))
                .build();

        if (recipeDto.getCategoriesDto() != null) {

            recipeDto.getCategoriesDto()
                    .forEach(categoryDto -> recipe.getCategories()
                            .add(CataegoryDtoToCategory
                                    .rewrite(categoryDto)));
        }
        if (recipeDto.getIngredientsDto() != null) {

            recipeDto.getIngredientsDto()
                    .forEach(ingredientDto -> recipe.getIngredients()
                            .add(IngredientDtoToIngredient
                                    .rewrite(ingredientDto)));
        }

        return recipe;
    }
}
