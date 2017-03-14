package com.example.car.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.car.model.Coche;

public interface CocheRepository extends JpaRepository <Coche, Integer> {
	
	public Coche getCocheByMatricula(String matricula);

}
