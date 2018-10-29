package com.jd.recipeapp.user.services;

import com.google.common.collect.Sets;
import com.jd.recipeapp.user.domain.Role;
import com.jd.recipeapp.user.domain.User;
import com.jd.recipeapp.user.domain.UserAddress;
import com.jd.recipeapp.user.dtos.UserRegistrationDto;
import com.jd.recipeapp.user.repository.RoleRepository;
import com.jd.recipeapp.user.repository.UserRepository;
import com.jd.recipeapp.user.userExcecptions.UserExistsException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.apache.commons.codec.digest.DigestUtils;

import java.util.Optional;

@Service
@Slf4j
public class RegistrationService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private PasswordEncoder passwordEncoder;

    @Autowired
    public RegistrationService(UserRepository userRepository, RoleRepository roleRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
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
        UserAddress userAddress = UserAddress.builder()
                .country(userRegistration.getCountry())
                .city(userRegistration.getCity())
                .street(userRegistration.getStreet())
                .zipCode(userRegistration.getZipCode())
                .build();
        User user = User.builder()
                .email(userRegistration.getEmail())
                .firstName(userRegistration.getFirstName())
                .lastName(userRegistration.getLastName())
                .passwordHash(passwordEncoder.encode(userRegistration.getPassword()))
                .userAddress(userAddress)
                .build();
        user.setRoles(Sets.newHashSet(userRole));
        userRepository.save(user);

    }
}
