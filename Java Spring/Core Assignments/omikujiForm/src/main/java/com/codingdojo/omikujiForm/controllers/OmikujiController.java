package com.codingdojo.omikujiForm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class OmikujiController {
	
	@GetMapping("/")
	public String index() {
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String omikujiForm() {
		return "form.jsp";
	}
	
	@GetMapping ("/omikuji/show")
	public String omikujiShow(HttpSession session, Model model) {
		String number = (String) session.getAttribute("number");
		String city = (String) session.getAttribute("city");
		String person = (String) session.getAttribute("person");
		String hobby = (String) session.getAttribute("hobby");
		String livingThing = (String) session.getAttribute("livingThing");
		String nice = (String) session.getAttribute("nice");
		model.addAttribute("number", number);
		model.addAttribute("city", city);
		model.addAttribute("person", person);
		model.addAttribute("hobby", hobby);
		model.addAttribute("livingThing", livingThing);
		model.addAttribute("nice", nice);
		return "show.jsp";
	}
	
	@PostMapping("/formFortune")
	public String formFortune(
			@RequestParam("number") String number,
			@RequestParam("city") String city,
			@RequestParam("person") String person,
			@RequestParam("hobby") String hobby,
			@RequestParam("livingThing") String livingThing,
			@RequestParam("nice") String nice,
			HttpSession session
			) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("nice", nice);
		return "redirect:/omikuji/show";
	}
}
