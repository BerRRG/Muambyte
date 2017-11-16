package br.com.trive.muambyte.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.trive.muambyte.models.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}