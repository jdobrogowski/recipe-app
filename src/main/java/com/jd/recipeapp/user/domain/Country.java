package com.jd.recipeapp.user.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Country {


    POLAND("PL"), GERMANY("DE"), RUSSIA("RUS");

    private String symbol;

}
