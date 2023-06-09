package com.codingdojo.dojosAndNinjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.dojosAndNinjas.models.Dojo;
import com.codingdojo.dojosAndNinjas.models.Ninja;
import com.codingdojo.dojosAndNinjas.services.AppService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/ninjas")
public class NinjaController {
	@Autowired
	private AppService appservice;
	
	@GetMapping("/new")
	public String createNinja(@ModelAttribute("ninja") Ninja ninja, Model viewModel) {
		List<Dojo> allDojos = this.appservice.allDojos();
		viewModel.addAttribute("allDojos", allDojos);
		
		return "newNinja.jsp";
	}
	
	@PostMapping("/createNinja")
	public String ninjaCreated(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model viewModel) {
		if(result.hasErrors()) {
			List<Dojo> allDojos = this.appservice.allDojos();
			viewModel.addAttribute("allDojos", allDojos);
			
			return "newNinja.jsp";
		}
		this.appservice.createNinja(ninja);
		
		return "redirect:/dojo/" + ninja.getDojo().getId();
	}
}
