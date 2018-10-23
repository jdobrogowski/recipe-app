package com.jd.recipeapp.user.domain;


import lombok.*;

import javax.persistence.*;


@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
public class UserAddress{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String street;

    private String zipCode;

    private String city;

    @Enumerated(EnumType.STRING)
    private Country country;

    @OneToOne
    private User user;

}
