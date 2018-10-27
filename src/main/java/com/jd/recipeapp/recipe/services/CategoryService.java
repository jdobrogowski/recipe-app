package com.jd.recipeapp.recipe.services;

import com.jd.recipeapp.recipe.domain.Category;
import com.jd.recipeapp.recipe.exceptions.CategoriesNotFound;
import com.jd.recipeapp.recipe.repositories.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Category> findAllCategories() {

        List<Category> categories = categoryRepository.findAll();
        if (categories.isEmpty()) {

            throw new CategoriesNotFound("Brak kategorii");
        }
        return categories;
    }
}
