package pl.coderslab.repository;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.Card;
import pl.coderslab.entity.Comment;
import pl.coderslab.entity.Card;
import pl.coderslab.entity.User;

public interface CommentRepository extends JpaRepository<Comment, Long>{

	Collection<Comment> findAllByCardOrderByCreatedDesc(Card card);
	Collection<Comment> findAllByCardIdOrderByCreatedDesc(long id);
	
	long countByUser(User user);
	long countByUserId(long id);
	
	
}
