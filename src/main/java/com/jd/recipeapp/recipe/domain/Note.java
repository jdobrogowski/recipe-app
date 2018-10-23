package com.jd.recipeapp.recipe.domain;

import lombok.*;

import javax.persistence.*;

@Embeddable
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@EqualsAndHashCode
public class Note {

//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;

    @Lob
    private String text;

    @OneToOne
    private Recipe recipe;

}
