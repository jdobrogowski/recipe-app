package com.jd.recipeapp.recipe.rewriters.mapper;

import com.jd.recipeapp.recipe.domain.UnitOfMeasure;
import com.jd.recipeapp.recipe.dtos.UnitOfMeasureDto;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

//
//public class UnitOfMeasureMapperTest {
//
//    @Autowired
//    UnitOfMeasureMapper unitOfMeasureMapper;
//
//    @Test
//    public void mapperTest() {
//
//        UnitOfMeasureDto dto = new UnitOfMeasureDto();
//        dto.setId(1L);
//        dto.setName("spoon");
//
//        UnitOfMeasure unitOfMeasure = unitOfMeasureMapper.unitOfMeasureDtoToUniteOfMeasure(dto);
//
//        Assert.assertTrue(dto.getId().equals(unitOfMeasure.getId()));
//
//    }
//}