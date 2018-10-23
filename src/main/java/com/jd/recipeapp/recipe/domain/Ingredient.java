package com.jd.recipeapp.recipe.domain;

import lombok.*;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@EqualsAndHashCode
public class Ingredient {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private BigDecimal amount;

    @OneToOne(fetch = FetchType.EAGER)
    private UniteOfMeasure uniteOfMeasure;

    @ManyToOne
    private Recipe recipe;
}
