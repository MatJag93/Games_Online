package pl.coderslab.repository;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import pl.coderslab.entity.Card;
import pl.coderslab.entity.User;

public interface CardRepository extends JpaRepository<Card, Long> {

	Collection<Card> findAllByUser(User user);
	Collection<Card> findAllByUserId(long id);
	long countByUser(User user);
	long countByUserId(long id);
	
//	@Query("Select c From Card c ORDER By c.created DESC")
	Collection<Card> findAllByOrderByCreatedDesc();
	
	@Query("Select c From Card c where c.user.id = ?1 Order By c.created DESC")
	Collection<Card> findByUserIdDesc(long id);
	
}
