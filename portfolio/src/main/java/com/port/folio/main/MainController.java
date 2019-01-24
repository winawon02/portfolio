package com.port.folio.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {

	@RequestMapping("/home")
	public String goMainHome() {
		
		return "/main/main.page";
	}
}
