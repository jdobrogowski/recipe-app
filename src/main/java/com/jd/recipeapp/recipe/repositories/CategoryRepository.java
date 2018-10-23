package com.jd.recipeapp.recipe.repositories;

import com.jd.recipeapp.recipe.domain.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {


}
