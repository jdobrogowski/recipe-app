package com.jd.recipeapp.recipe.controllers;

import com.jd.recipeapp.recipe.dtos.IngredientDto;
import com.jd.recipeapp.recipe.dtos.UnitOfMeasureDto;
import com.jd.recipeapp.recipe.services.IngredientService;
import com.jd.recipeapp.recipe.services.UnitOfMeasureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class IngredientController {

    private UnitOfMeasureService unitOfMeasureService;
    private IngredientService ingredientService;

    @Autowired
    public IngredientController(UnitOfMeasureService unitOfMeasureService, IngredientService ingredientService) {
        this.unitOfMeasureService = unitOfMeasureService;
        this.ingredientService = ingredientService;
    }


    @GetMapping("/recipe/{recipeId}/ingredient/new")
    public String newIngredient(@PathVariable Long recipeId, Model model) {

        model.addAttribute("ingredient", prepareNewIngredient(recipeId));
        model.addAttribute("uomList", unitOfMeasureService.findAllUnitOfMEasure());
        return "recipe/ingredient/ingredientform";
    }


    @PostMapping("/recipe/{recipeId}/ingredient/new")
    public String saveOrUpdate(@ModelAttribute IngredientDto ingredientDto) {

        ingredientService.createOrUpdateIngredient(ingredientDto);
        return "redirect:/recipe/new";
    }

    private IngredientDto prepareNewIngredient(Long recipeId) {

        IngredientDto ingredientDto = new IngredientDto();
        ingredientDto.setUnitOfMeasureDto(new UnitOfMeasureDto());
        ingredientDto.setRecipeId(recipeId);
        return ingredientDto;
    }
}
