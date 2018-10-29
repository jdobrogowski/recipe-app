package com.jd.recipeapp.user.repository;

import com.jd.recipeapp.user.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {

    @Query("SELECT r FROM Role r WHERE r.roleName = ?1")
    Optional<Role> findRoleByRoleName(String roleName);
}
