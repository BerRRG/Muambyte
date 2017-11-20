package br.com.trive.muambyte.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import br.com.trive.muambyte.models.PaginatedList;
import br.com.trive.muambyte.models.User;

@Repository
public class ClientDao
{

   @PersistenceContext
   private EntityManager manager;

   public List<User> all()
   {
      return manager.createQuery("select c from User c", User.class).getResultList();
   }

   public void save(User client)
   {
      manager.persist(client);
   }

   public User findById(Long id)
   {
      return manager.find(User.class, id);
   }

   public void remove(User client)
   {
      manager.remove(client);
   }

   public void update(User client)
   {
      manager.merge(client);
   }

   public PaginatedList paginated(int page, int max)
   {
      return new PaginatorQueryHelper().list(manager, User.class, page, max);
   }

}
