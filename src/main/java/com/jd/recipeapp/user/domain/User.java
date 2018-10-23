package com.jd.recipeapp.user.domain;


import com.jd.recipeapp.recipe.domain.Recipe;
import lombok.*;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User  {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String email;
    private String firstName;
    private String lastName;
    private String passwordHash;

    @OneToOne(cascade = CascadeType.ALL)
    private UserAddress userAddress;

    @ManyToMany
    @JoinTable(name = "user_role")
    private Set<Role> roles;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private List<Recipe> usersRecipes;

}
