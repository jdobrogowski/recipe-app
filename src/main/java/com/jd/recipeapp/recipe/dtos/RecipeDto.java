package com.jd.recipeapp.recipe.dtos;


import com.jd.recipeapp.recipe.domain.Difficulty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.URL;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class RecipeDto {

    private Long id;

    @NotBlank
    @Size(min = 2, max = 100, message = "Opis przepisu jest nieprawidłowy. Dopuszczalna ilość znaków od {min} do {max}, została podana ${validatedValue}")
    private String description;

    @NotBlank
    @Min(value = 1, message = "Czas przygotowania nie prwaidłowy. Należy podać czas większy niż {min}, została podana ${validatedValue}")
    @Max(value = 999, message = "Czas przygotowania nie prwaidłowy. Należy podać czas mniejszy niż {max}, została podana ${validatedValue}")
    private Integer prepTime;

    @NotBlank
    @Min(value = 1, message = "Czas gotowania nie prwaidłowy. Należy podać czas większy niż {min}, została podana ${validatedValue}")
    @Max(value = 999, message = "Czas gotowania nie prwaidłowy. Należy podać czas mniejszy niż {max}, została podana ${validatedValue}")
    private Integer cookTime;

    @NotBlank
    @Min(value = 0, message = "Ilość porrcji nieprwaidłowa. Należy podać większą niż {min}, została podana ${validatedValue}")
    @Max(value = 999, message = "Ilość porrcji nieprwaidłowa. Należy podać mniejszą niż {max}, została podana ${validatedValue}")
    private Integer servings;

    @URL
    private String url;

    @NotBlank
    @Size(min = 2, max = 100, message = "Opis przygotowania jest nieprawidłowy. Dopuszczalna ilość znaków  {min} do {max}, podałeś ${validatedValue}")
    private String preparing;

    @NotBlank
    private Difficulty difficulty;

    @NotBlank
    private NoteDto noteDto;

    @NotBlank
    private List<CategoryDto> categoriesDto;

    @NotBlank
    private List<IngredientDto> ingredientsDto;


}
