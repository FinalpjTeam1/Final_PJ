package com.heal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class TrailController {
	
	
	@RequestMapping("/trail/sidoMap")
	public String sidoMapForm() {
		return "trail/sidoMap";
	}
	
	@RequestMapping("/trail/trailMap")
	public String trailForm() {
		return "trail/trailMap";
	}
	
	
	
	
	
	
	
	
	
	
}
