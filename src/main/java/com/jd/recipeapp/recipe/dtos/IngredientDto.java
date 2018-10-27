package com.jd.recipeapp.recipe.dtos;

import com.jd.recipeapp.recipe.domain.UniteOfMeasure;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;

@Getter
@Setter
@NoArgsConstructor
public class IngredientDto {

    private Long id;

 //   @NotBlank
    private String name;

  //  @NotBlank
    private BigDecimal amount;

  //  @NotBlank
    private UniteOfMeasureDto uniteOfMeasureDto;

    private Long recipeId;

}
