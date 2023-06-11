package com.codingdojo.loginAndRegistration.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.loginAndRegistration.models.LoginUser;
import com.codingdojo.loginAndRegistration.models.User;
import com.codingdojo.loginAndRegistration.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	 public String index(Model model) {
	     model.addAttribute("newUser", new User());
	     model.addAttribute("newLogin", new LoginUser());
	     
	     return "index.jsp";
	 }
	 
	 @PostMapping("/register")
	 public String register(@Valid @ModelAttribute("newUser") User newUser, 
	         BindingResult result, Model model, HttpSession session) {
	     
	     userService.register(newUser, result);
	     
	     if(result.hasErrors()) {
	         model.addAttribute("newLogin", new LoginUser());
	         return "index.jsp";
	     }
	     
	     session.setAttribute("userId", newUser.getId());
	 
	     return "redirect:/welcome";
	 }
	 
	 @PostMapping("/login")
	 public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
	         BindingResult result, Model model, HttpSession session) {
	     
	     User user = userService.login(newLogin, result);
	 
	     if(result.hasErrors()) {
	         model.addAttribute("newUser", new User());
	         return "index.jsp";
	     }
	 
	     session.setAttribute("userId", user.getId());
	 
	     return "redirect:/welcome";
	 }
	 
	 @GetMapping("/logout")
	 public String logout(HttpSession session) {
		 session.setAttribute("userId", null);
		 
		 return "redirect:/";
	 }
	 
	 @GetMapping("/welcome")
	 public String welcome(Model model, HttpSession session) {
		 Long userId = (Long) session.getAttribute("userId");
		 
		 if(userId==null) {
			 return "redirect:/";
		 }
		 
		 User user = userService.findById(userId);
		 model.addAttribute("user", user);
		 
		 return "dashboard.jsp";
	 }
}
