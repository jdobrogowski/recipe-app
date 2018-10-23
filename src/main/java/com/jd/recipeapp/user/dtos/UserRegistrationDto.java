package com.jd.recipeapp.user.dtos;

import com.jd.recipeapp.user.domain.Country;
import com.jd.recipeapp.user.validation.PasswordMatches;
import com.jd.recipeapp.user.validation.ValidEmail;
import com.jd.recipeapp.user.validation.ValidPassword;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.*;

@Getter
@Setter
@NoArgsConstructor
@PasswordMatches
public class UserRegistrationDto {

    private Long id;

    @NotBlank
  //  @ValidEmail
    private String email;

    @NotBlank
    @Size(min = 2)
    private String firstName;

    @NotBlank
    @Size(min = 2)
    private String lastName;

    @NotBlank
   // @ValidPassword
    private String password;
    private String matchingPassword;

    @NotBlank
    @Size(min = 2)
    private String street;

    @NotBlank
    @Pattern(regexp = "^[0-9]{2}-[0-9]{3}")
    private String zipCode;

    @NotBlank
    @Size(min = 2)
    private String city;


    private Country country;
}
