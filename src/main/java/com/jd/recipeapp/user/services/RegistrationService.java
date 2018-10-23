package com.jd.recipeapp.user.services;

import com.google.common.collect.Sets;
import com.jd.recipeapp.user.domain.Role;
import com.jd.recipeapp.user.domain.User;
import com.jd.recipeapp.user.domain.UserAddress;
import com.jd.recipeapp.user.dtos.UserRegistrationDto;
import com.jd.recipeapp.user.repository.RoleRepository;
import com.jd.recipeapp.user.repository.UserRepository;
import com.jd.recipeapp.user.userExcecptions.UserExistsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.apache.commons.codec.digest.DigestUtils;

import java.util.Optional;

@Service
public class RegistrationService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;

    @Autowired
    public RegistrationService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public void registerUser(UserRegistrationDto userRegistration) {

        Optional<User> userByEmail = userRepository.findUserByEmail(userRegistration.getEmail());
        if (userByEmail.isPresent()) {

            throw new UserExistsException("User with this email already exist");
        }

        Optional<Role> optionalRole = roleRepository.findRoleByRoleName("ROLE_USER");
        Role userRole;
        if (!optionalRole.isPresent()) {
            userRole = new Role("ROLE_USER");
            roleRepository.save(userRole);
        } else {
            userRole = optionalRole.get();
        }
        User user = User.builder()
                .email(userRegistration.getEmail())
                .firstName(userRegistration.getFirstName())
                .lastName(userRegistration.getLastName())
                .passwordHash(DigestUtils.sha512Hex(userRegistration.getPassword()))
                .userAddress(UserAddress.builder()
                        .country(userRegistration.getCountry())
                        .city(userRegistration.getCity())
                        .street(userRegistration.getStreet())
                        .zipCode(userRegistration.getZipCode())
                        .build())
                .build();
        user.setRoles(Sets.newHashSet(userRole));
        userRepository.save(user);
    }
}
