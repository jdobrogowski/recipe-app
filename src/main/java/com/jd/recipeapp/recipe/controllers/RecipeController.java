package com.jd.recipeapp.recipe.controllers;

import com.jd.recipeapp.recipe.domain.Category;
import com.jd.recipeapp.recipe.domain.Recipe;
import com.jd.recipeapp.recipe.dtos.RecipeDto;
import com.jd.recipeapp.recipe.services.CategoryService;
import com.jd.recipeapp.recipe.services.RecipeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@Slf4j
public class RecipeController {

    private RecipeService recipeService;
    private CategoryService categoryService;

    @Autowired
    public RecipeController(RecipeService recipeService, CategoryService categoryService) {
        this.recipeService = recipeService;
        this.categoryService = categoryService;
    }

    @GetMapping("/recipe/{recipeId}/show")
    public String showRecipeById(@PathVariable String recipeId, Model model) {

        Recipe recipe = recipeService.findRecipeById(Long.valueOf(recipeId));
        model.addAttribute("recipe", recipe);
        return "recipe/show";
    }


    @GetMapping("/recipe/new")
    public String createRecipeForm(Model model) {

        model.addAttribute("recipe", new RecipeDto());
        List<Category> categories = categoryService.findAllCategories();
        model.addAttribute("categories", categories);
        return "recipe/recipeform";
    }


    @PostMapping("/recipe")
    public String createNewRecipe(@Valid @ModelAttribute("recipe") RecipeDto recipeDto, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            bindingResult.getAllErrors().forEach(objectError -> log.error(objectError.toString()));
            return "recipe/recipeform";
        }
        Recipe recipe = recipeService.createOrUpdateRecipe(recipeDto);
        return "redirect:/recipe/" + recipe.getId() + "/show";
    }
}
