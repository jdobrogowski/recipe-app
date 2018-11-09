package com.jd.recipeapp.recipe.dtos;


import com.jd.recipeapp.recipe.domain.Difficulty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
@NoArgsConstructor
public class RecipeDto {

    private Long id;

//    @NotBlank
//    @Size(min = 2, max = 100, message = "Opis przepisu jest nieprawidłowy. Dopuszczalna ilość znaków od {min} do {max}, została podana ${validatedValue}")
    private String name;
//
//    @NotBlank
//    @Min(value = 1, message = "Czas przygotowania nie prwaidłowy. Należy podać czas większy niż {min}, została podana ${validatedValue}")
//    @Max(value = 999, message = "Czas przygotowania nie prwaidłowy. Należy podać czas mniejszy niż {max}, została podana ${validatedValue}")
    private Integer prepTime;

//    @NotBlank
//    @Min(value = 1, message = "Czas gotowania nie prwaidłowy. Należy podać czas większy niż {min}, została podana ${validatedValue}")
//    @Max(value = 999, message = "Czas gotowania nie prwaidłowy. Należy podać czas mniejszy niż {max}, została podana ${validatedValue}")
    private Integer cookTime;

//    @NotBlank
//    @Min(value = 0, message = "Ilość porrcji nieprwaidłowa. Należy podać większą niż {min}, została podana ${validatedValue}")
//    @Max(value = 999, message = "Ilość porrcji nieprwaidłowa. Należy podać mniejszą niż {max}, została podana ${validatedValue}")
    private Integer servings;

   // @URL
    private String url;

//    @NotBlank
//    @Size(min = 2, max = 100, message = "Opis przygotowania jest nieprawidłowy. Dopuszczalna ilość znaków  {min} do {max}, podałeś ${validatedValue}")
    private String preparing;

    //@NotBlank
    private Difficulty difficulty;

    //@NotBlank
    private String note;

    //@NotBlank
    private List<CategoryDto> categoriesDto;

    //@NotBlank
    private List<IngredientDto> ingredientsDto;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrepTime() {
        return prepTime;
    }

    public void setPrepTime(Integer prepTime) {
        this.prepTime = prepTime;
    }

    public Integer getCookTime() {
        return cookTime;
    }

    public void setCookTime(Integer cookTime) {
        this.cookTime = cookTime;
    }

    public Integer getServings() {
        return servings;
    }

    public void setServings(Integer servings) {
        this.servings = servings;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPreparing() {
        return preparing;
    }

    public void setPreparing(String preparing) {
        this.preparing = preparing;
    }

    public Difficulty getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Difficulty difficulty) {
        this.difficulty = difficulty;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public List<CategoryDto> getCategoriesDto() {
        return categoriesDto;
    }

    public void setCategoriesDto(List<CategoryDto> categoriesDto) {
        this.categoriesDto = categoriesDto;
    }

    public List<IngredientDto> getIngredientsDto() {
        return ingredientsDto;
    }

    public void setIngredientsDto(List<IngredientDto> ingredientsDto) {
        this.ingredientsDto = ingredientsDto;
    }
}
