package com.codingdojo.projectManager.models;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="tasks")
public class Task {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String task;
	
	@ManyToOne(fetch=FetchType.LAZY)
	private Project project;
	
	@ManyToOne(fetch=FetchType.LAZY)
	private User user;
}
