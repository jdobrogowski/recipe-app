package com.jd.recipeapp.recipe.repositories;

import com.jd.recipeapp.recipe.domain.Ingredient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IngredientRepository extends JpaRepository<Ingredient, Long > {
}
