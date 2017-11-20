package br.com.trive.muambyte.daos;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import br.com.trive.muambyte.models.User;
 
@Transactional
public class AccountDaoImpl implements AccountDao {
    
    @Autowired
    private SessionFactory sessionFactory;
 
    @Override
    public User findAccount(String userName ) {
        Session session = sessionFactory.getCurrentSession();
        Criteria crit = session.createCriteria(User.class);
        crit.add(Restrictions.eq("userName", userName));
        return (User) crit.uniqueResult();
    }
 
}