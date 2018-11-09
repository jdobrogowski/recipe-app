package com.jd.recipeapp.recipe.rewriters;

import com.jd.recipeapp.recipe.domain.UnitOfMeasure;
import com.jd.recipeapp.recipe.dtos.UnitOfMeasureDto;

public class UniteOfMeasureDtoToUniteOfMeasure {

    public static UnitOfMeasure rewrite(UnitOfMeasureDto unitOfMeasureDto){

        if(unitOfMeasureDto == null){
            return null;
        }
        return UnitOfMeasure.builder()
                .id(unitOfMeasureDto.getId())
                .name(unitOfMeasureDto.getName())
                .build();
    }
}
