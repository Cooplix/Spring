package com.ProjectSpring.Spring.Repository;

import com.ProjectSpring.Spring.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.UserDetails;

public interface UserRepo extends JpaRepository<User, Long> {

    User findByUsername(String username);
}
