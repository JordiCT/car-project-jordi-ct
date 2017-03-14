package com.example.car.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.car.model.Coche;
import com.example.car.service.CocheService;

@Controller
public class CocheController {

	@Autowired
	CocheService cocheService;
	
	@RequestMapping("/listar")
	public String list(Model model){
		model.addAttribute("cocheList", cocheService.getCocheList());
			
		return "list";
	}
	
	@RequestMapping(value = "/editar/{matricula}", method = RequestMethod.POST)
	public String edit(Model model){
		
		
		
		return "list";
	}
	
	@RequestMapping(value = "/editar/{matricula}", method = RequestMethod.GET)
	public String getCoche(@ModelAttribute("coche") Coche coche, @PathVariable String matricula, BindingResult result, Model model) {
	
		System.out.println(coche.getMatricula());
		model.addAttribute("coche", cocheService.getCocheByMatricula(coche.getMatricula()));
		System.out.println(coche.getModelo());
		
		return "edit";
	}
	
	@RequestMapping(value = "/crear", method = RequestMethod.GET)
	public String crear(Model model){
		
		model.addAttribute("coche", new Coche());
		
		return "create";
	}
	
	@RequestMapping(value = "/crear", method = RequestMethod.POST)
	public String addCoche(@ModelAttribute("coche") Coche coche, BindingResult result, Model model){
		
		model.addAttribute("coche", cocheService.addCoche(coche));
		
		return "list";
	}
}
