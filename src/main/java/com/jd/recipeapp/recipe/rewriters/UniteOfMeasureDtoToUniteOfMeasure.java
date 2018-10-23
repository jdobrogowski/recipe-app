package com.jd.recipeapp.recipe.rewriters;

import com.jd.recipeapp.recipe.domain.UniteOfMeasure;
import com.jd.recipeapp.recipe.dtos.UniteOfMeasureDto;

public class UniteOfMeasureDtoToUniteOfMeasure {

    public static UniteOfMeasure rewrite(UniteOfMeasureDto uniteOfMeasureDto){

        if(uniteOfMeasureDto == null){
            return null;
        }
        return UniteOfMeasure.builder()
                .id(uniteOfMeasureDto.getId())
                .name(uniteOfMeasureDto.getName())
                .build();
    }
}
