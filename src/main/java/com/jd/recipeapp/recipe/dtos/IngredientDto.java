package com.jd.recipeapp.recipe.dtos;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
    private UnitOfMeasureDto unitOfMeasureDto;

    private Long recipeId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public UnitOfMeasureDto getUnitOfMeasureDto() {
        return unitOfMeasureDto;
    }

    public void setUnitOfMeasureDto(UnitOfMeasureDto unitOfMeasureDto) {
        this.unitOfMeasureDto = unitOfMeasureDto;
    }

    public Long getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(Long recipeId) {
        this.recipeId = recipeId;
    }
}
