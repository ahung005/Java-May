package com.codingdojo.dojosAndNinjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojosAndNinjas.models.Dojo;
import com.codingdojo.dojosAndNinjas.models.Ninja;
import com.codingdojo.dojosAndNinjas.repositories.DojoRepository;
import com.codingdojo.dojosAndNinjas.repositories.NinjaRepository;

@Service
public class AppService {
	@Autowired
	private DojoRepository dojoRepository;
	@Autowired
	private NinjaRepository ninjaRepository;
	
	public List<Dojo> allDojos() {
		return this.dojoRepository.findAll();
	}
	
	public Dojo createDojo(Dojo dojo) {
		return this.dojoRepository.save(dojo);
	}
	
	public Dojo getOneDojo(Long id) {
		return this.dojoRepository.findById(id).orElse(null);
	}
	
	public Ninja createNinja(Ninja ninja) {
		return this.ninjaRepository.save(ninja);
	}	
}
