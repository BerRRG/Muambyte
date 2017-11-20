package br.com.trive.muambyte.daos;

import br.com.trive.muambyte.models.User;

public interface AccountDao { 
    public User findAccount(String userName );
}