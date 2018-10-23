package com.jd.recipeapp.recipe.services;

import com.jd.recipeapp.recipe.domain.Note;
import com.jd.recipeapp.recipe.domain.Recipe;
import com.jd.recipeapp.recipe.dtos.RecipeDto;
import com.jd.recipeapp.recipe.exceptions.NoPermissionException;
import com.jd.recipeapp.recipe.exceptions.RecipeNotExistException;
import com.jd.recipeapp.recipe.repositories.RecipeRepository;
import com.jd.recipeapp.recipe.rewriters.RecipeDtoToRecipe;
import com.jd.recipeapp.user.domain.User;
import com.jd.recipeapp.user.repository.UserRepository;
import com.jd.recipeapp.user.services.UserContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class RecipeService {

    private RecipeRepository recipeRepository;
    private UserRepository userRepository;

    @Autowired
    public RecipeService(RecipeRepository recipeRepository, UserRepository userRepository) {
        this.recipeRepository = recipeRepository;
        this.userRepository = userRepository;
    }

    public Recipe createOrUpdateRecipe(RecipeDto recipeDto) {

        Recipe recipe = RecipeDtoToRecipe.rewrite(recipeDto);
        return recipeRepository.save(recipe);
    }

    public Recipe findRecipeById(Long id){

        UserContextHolder userContextHolder = new UserContextHolder();
        Optional<User> userByEmail = userRepository.findUserByEmail(userContextHolder.getUserLoggedIn());
        if(!userByEmail.isPresent()){
            throw new NoPermissionException("Brak Uprawnien");
        }
        return userByEmail.get()
                .getUsersRecipes()
                .stream()
                .filter(recipe -> recipe.getId().equals(id))
                .findFirst()
                .orElseThrow(() -> new RecipeNotExistException("Przepis o podanym id nie istnieje"));
    }
}
