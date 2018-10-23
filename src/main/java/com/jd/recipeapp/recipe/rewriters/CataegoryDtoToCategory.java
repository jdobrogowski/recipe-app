package com.jd.recipeapp.recipe.rewriters;

import com.jd.recipeapp.recipe.domain.Category;
import com.jd.recipeapp.recipe.dtos.CategoryDto;

public class CataegoryDtoToCategory {

    public static Category rewrite(CategoryDto categoryDto) {

        if(categoryDto == null) {

            return null;
        }
        return Category.builder()
                .id(categoryDto.getId())
                .name(categoryDto.getName())
                .build();
    }
}
