package com.jd.recipeapp.recipe.repositories;

import com.jd.recipeapp.recipe.domain.UniteOfMeasure;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UniteOfMeasureRepository extends JpaRepository<UniteOfMeasure, Long> {

    List<UniteOfMeasure> findAll();
}
