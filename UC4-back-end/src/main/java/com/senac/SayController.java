package com.senac;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SayController {
	
	@GetMapping("/say")
	public String saymyname() {
		return "Heisenberg";
	}

}
