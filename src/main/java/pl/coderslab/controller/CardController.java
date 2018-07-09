package pl.coderslab.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entity.Card;
import pl.coderslab.entity.Comment;
import pl.coderslab.entity.User;
import pl.coderslab.repository.CommentRepository;
import pl.coderslab.repository.CardRepository;

@Controller
@RequestMapping(path = "/card")
public class CardController {

	@Autowired
	private CardRepository cardRepository;

	@Autowired
	private CommentRepository commentRepository;

	@GetMapping(path = "/list")
	public String listAllCards(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			List<Card> cards = (ArrayList<Card>) cardRepository.findAllByOrderByCreatedDesc();
			model.addAttribute("cards", cards);
			model.addAttribute("card", new Card());
			return "/card/listofcards";
		} else {
			return "/index";
		}

	}

	@PostMapping(path = "/list")
	public String listAllCards(HttpSession session, @ModelAttribute Card card) {
		if (card != null && !"".equals(card.getText())) {
			User user = (User) session.getAttribute("user");
			if (user != null) {
				card.setUser(user);
				//card.setDescription(description);
				card.setCreated(LocalDateTime.now());
				cardRepository.save(card);
				return "redirect:list";
			} else {
				return "index";
			}
		} else {
			return "redirect:list";
		}
	}

	@GetMapping(path = "/details/{id}")
	public String cardDetails(@PathVariable("id") long id, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			Card card = cardRepository.findOne(id);
			if (card != null) {
				Collections.reverse(card.getComments());
				model.addAttribute("card", card);
				model.addAttribute("comment", new Comment());
				session.setAttribute("card", card);
				return "/card/carddetails";

			} else {
				return "card/cardnotfound";
			}
		} else {
			return "index";
		}
	}


	@PostMapping(path = "/details/{id}")
	public String cardDetails(HttpSession session, @ModelAttribute Comment comment) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "index";
		} else {
			Card card = (Card) session.getAttribute("card");
			session.removeAttribute("card");
			if (comment != null && !"".equals(comment.getText())) {
				comment.setUser(user);
				comment.setCard(card);
				comment.setCreated(LocalDateTime.now());
				commentRepository.save(comment);
			}
			return "redirect:/card/details/" + card.getId();
		}
	}

}
