package com.jd.recipeapp.recipe.services;

import com.jd.recipeapp.recipe.domain.UniteOfMeasure;
import com.jd.recipeapp.recipe.exceptions.UniteOfMeasureNotFoundExceptions;
import com.jd.recipeapp.recipe.repositories.UniteOfMeasureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnitOfMeasureService {

    private UniteOfMeasureRepository uniteOfMeasureRepository;

    @Autowired
    public UnitOfMeasureService(UniteOfMeasureRepository uniteOfMeasureRepository) {
        this.uniteOfMeasureRepository = uniteOfMeasureRepository;
    }

    public List<UniteOfMeasure> findAllUnitOfMEasure(){

        List<UniteOfMeasure> uniteOfMeasures = uniteOfMeasureRepository.findAll();
        if(uniteOfMeasures.isEmpty()){
            throw new UniteOfMeasureNotFoundExceptions(" Empty list od unir of measure");
        }
        return uniteOfMeasures;
    }
}
