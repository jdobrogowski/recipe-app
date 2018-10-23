package com.jd.recipeapp.recipe.dtos;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
@NoArgsConstructor
public class NoteDto {


   // private Long id;

    @NotBlank
    private String text;
}
