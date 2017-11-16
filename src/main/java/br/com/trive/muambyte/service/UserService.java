package br.com.trive.muambyte.service;

import br.com.trive.muambyte.models.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}