package com.codingdojo.projectManager.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.projectManager.models.LoginUser;
import com.codingdojo.projectManager.models.Project;
import com.codingdojo.projectManager.models.User;
import com.codingdojo.projectManager.services.ProjectService;
import com.codingdojo.projectManager.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProjectService projectService;
	
	@GetMapping("/")
	public String index(Model model) {
		
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		
		return "index.jsp";
	}
	
	@PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {

    	User user = userService.register(newUser, result);
    	
        
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
        
        session.setAttribute("userId", user.getId());
    
        return "redirect:/dashboard";
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
    
        return "redirect:/dashboard";
    }
    
    @GetMapping("/dashboard")
    public String dashboard(Model model, HttpSession session) {
    	
    	if(session.getAttribute("userId") == null) {
    		return "redirect:/logout";
    	}
    	
    	User user = userService.findById((Long) session.getAttribute("userId"));
    	
    	model.addAttribute("user", user);
    	model.addAttribute("projects", projectService.getAllProjects());
    	model.addAttribute("joinedProjects", projectService.getAllJoinedProjects(user));
    	
    	return "dashboard.jsp";
    }
    
    @GetMapping("/project/new")
    public String createProject(@ModelAttribute("project") Project project, HttpSession session, Model model) {
    	
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		
		Long userId = (Long) session.getAttribute("userId");
		
		model.addAttribute("userId", userId);
		
    	return "createProject.jsp";
    }
    
    @PostMapping("/project")
    public String createProject(@Valid @ModelAttribute("project") Project project, HttpSession session, BindingResult result) {
    	
    	if(session.getAttribute("userId") == null) {
    		return "redirect:/logout";
    	}
    	
    	if(result.hasErrors()) {
    		return "createProject.jsp";
    	}
    	
    	projectService.createProject(project);
    	
    	return "redirect:/dashboard";
    }
    
    @GetMapping("/project/{project_id}")
    public String oneProject(@PathVariable("project_id") Long projectId, HttpSession session, Model model) {
    	
    	if(session.getAttribute("userId") == null) {
    		return "redirect:/logout";
    	}
    	
    	model.addAttribute("project", projectService.getOneProject(projectId));
    	
    	return "oneProject.jsp";
    }
    
    @GetMapping("/join/{id}")
    public String joinTeam(@PathVariable("id") Long id, HttpSession session) {
    
    	Long userId = (Long) session.getAttribute("userId");
    	
    	User user = userService.findById(userId);
    	Project project = projectService.getOneProject(id);
    	
    	userService.joinTeam(user, project);
    	
    	return "redirect:/dashboard";
    }
    
    @GetMapping("/project/edit/{project_id}")
    public String editProject(@PathVariable("project_id") Long projectId, HttpSession session, Model model) {
    	
    	if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		
		model.addAttribute("userId", (Long) session.getAttribute("userId"));
		
    	model.addAttribute("project", projectService.getOneProject(projectId));
    	
    	return "edit.jsp";
    }
    
    @PutMapping("/project/{id}")
    public String updateProject(@Valid @ModelAttribute("project") Project project, BindingResult result, HttpSession session, @PathVariable("id") Long id) {
    	
    	if(session.getAttribute("userId") == null) {
    		return "redirect:/logout";
    	}
    	
    	if(result.hasErrors()) {
    		return "edit.jsp";
    	}
    	projectService.createProject(project);
    	
    	return "redirect:/dashboard";
    }
    
    @GetMapping("/delete/{id}")
    public String deleteProject(@PathVariable("id") Long id) {
    	
    	Project project = projectService.getOneProject(id);
    	projectService.deleteProject(project);
    	
    	return "redirect:/dashboard";
    }
    
    @GetMapping("/logout")
	public String logout(HttpSession session) {
	
    	session.setAttribute("userId", null); 
	    
    	return "redirect:/";
	}
}
