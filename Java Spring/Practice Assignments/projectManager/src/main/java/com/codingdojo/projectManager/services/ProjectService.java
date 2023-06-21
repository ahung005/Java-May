package com.codingdojo.projectManager.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.projectManager.models.Project;
import com.codingdojo.projectManager.models.User;
import com.codingdojo.projectManager.repositories.ProjectRepository;

@Service
public class ProjectService {
	
	@Autowired
	private ProjectRepository projectRepo;
	
	public Project createProject(Project newProject) {
		
		return projectRepo.save(newProject);
	}
	
	public List<Project> getAllProjects() {
		
		return projectRepo.findAll();
	}
	
	public Project getOneProject(Long id) {
		
		Optional<Project> result = projectRepo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		
		return null;
	}
	
	public List<Project> getAllJoinedProjects(User user) {
		
		return projectRepo.findAllByUsers(user);
	}
	
	public void deleteProject(Project project) {
		
		projectRepo.delete(project);
	}
}
