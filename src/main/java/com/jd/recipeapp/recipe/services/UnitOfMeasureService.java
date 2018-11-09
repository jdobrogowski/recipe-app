package com.jd.recipeapp.recipe.services;

import com.jd.recipeapp.recipe.domain.UnitOfMeasure;
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

    public List<UnitOfMeasure> findAllUnitOfMEasure(){

        List<UnitOfMeasure> unitOfMeasures = uniteOfMeasureRepository.findAll();
        if(unitOfMeasures.isEmpty()){
            throw new UniteOfMeasureNotFoundExceptions(" Empty list od unir of measure");
        }
        return unitOfMeasures;
    }
}
