package com.example.car.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.car.model.Coche;
import com.example.car.repository.CocheRepository;

@Service
public class CocheService {
	
	@Autowired
	CocheRepository cocheRepository;
	
	@Transactional
	public List<Coche> getCocheList(){
		return cocheRepository.findAll();
	}
	
	@Transactional
	public Coche getCocheByMatricula(String matricula){
		return cocheRepository.getCocheByMatricula(matricula);
	}
	
	@Transactional
	public void updateCoche(Coche coche){
	}
	
	@Transactional
	public Coche addCoche(Coche coche){
		return cocheRepository.save(coche);
	}

}
