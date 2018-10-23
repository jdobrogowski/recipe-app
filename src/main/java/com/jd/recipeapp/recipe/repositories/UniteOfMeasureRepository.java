package com.jd.recipeapp.recipe.repositories;

import com.jd.recipeapp.recipe.domain.UniteOfMeasure;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UniteOfMeasureRepository extends JpaRepository<UniteOfMeasure, Long> {
}
