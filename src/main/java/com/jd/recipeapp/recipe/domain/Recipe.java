package com.jd.recipeapp.recipe.domain;

import com.jd.recipeapp.user.domain.User;
import lombok.*;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@EqualsAndHashCode
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String description;

    private Integer prepTime;

    private Integer cookTime;

    private Integer servings;

    private String url;

    @Lob
    private String preparing;

    @Embedded
    private Note note;

    @Enumerated(value = EnumType.STRING)
    private Difficulty difficulty;

    @ManyToMany
    @JoinTable(name = "recipe_category",
            joinColumns = @JoinColumn(name = "recipe_id"),
            inverseJoinColumns = @JoinColumn(name = "category_id"))
    private List<Category> categories;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recipe")
    private List<Ingredient> ingredients;

    @ManyToOne
    private User user;

}
