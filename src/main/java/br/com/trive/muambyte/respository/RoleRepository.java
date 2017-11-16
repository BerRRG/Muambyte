package br.com.trive.muambyte.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.trive.muambyte.models.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}