package com.codingdojo.ninjaGoldGame.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class NinjaGoldGameController {
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/")
	public String game(
			HttpSession session,
			@RequestParam(value="farm", required=false) String farm,
			@RequestParam(value="cave", required=false) String cave,
			@RequestParam(value="house", required=false) String house,
			@RequestParam(value="quest", required=false) String quest
			) {
		
		int gold = 0;
		ArrayList<String> activities = new ArrayList<String>();
		SimpleDateFormat date = new SimpleDateFormat("MMMM d y h:mm a");
		
		if(session.getAttribute("gold") == null) {
			session.setAttribute("gold", gold);
			session.setAttribute("activities", activities);
		}
		else {
			gold = (int) session.getAttribute("gold");
			activities = (ArrayList<String>) session.getAttribute("activities");
		}
		

		if(farm != null) {
			int amount = new Random().nextInt(11) + 10;
			gold += amount;
			activities.add(0, "You entered a farm and earned " + amount + " gold. (" + date.format(new Date()) + ")");
			
			session.setAttribute("gold", gold);
			session.setAttribute("activities", activities);
			
			return "redirect:/";
		}
		if(cave != null) {
			int amount = new Random().nextInt(6) + 5;
			gold += amount;
			activities.add(0, "You entered a cave and earned " + amount + " gold. (" + date.format(new Date()) + ")");
			
			session.setAttribute("gold", gold);
			session.setAttribute("activities", activities);
			
			return "redirect:/";
		}
		if(house != null) {
			int amount = new Random().nextInt(4) + 2;
			gold += amount;
			activities.add(0, "You entered a house and earned " + amount + " gold. (" + date.format(new Date()) + ")");
			
			session.setAttribute("gold", gold);
			session.setAttribute("activities", activities);
			
			return "redirect:/";
		}
		if(quest != null) {
			int amount = new Random().nextInt(101) - 50;
			gold += amount;
			if(amount >= 0) {
				activities.add(0, "You completed a quest and earned " + amount + " gold. (" + date.format(new Date()) + ")");
			}
			else {
				activities.add(0, "You failed a quest and lost " + Math.abs(amount) + " gold. (" + date.format(new Date()) + ")");
			}
			
			session.setAttribute("gold", gold);
			session.setAttribute("activities", activities);
			
			return "redirect:/";
		}
		
		
		
		return "game.jsp";
	}
	
	@RequestMapping("/activities")
	public String activities() {
		return "activities.jsp";
	}
}
