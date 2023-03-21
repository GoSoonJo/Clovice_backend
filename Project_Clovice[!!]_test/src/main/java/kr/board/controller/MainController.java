package kr.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/")
	public String index() {
	
		return "index";
	}
	
	@RequestMapping("/products.do")
	public String products() {
		
		return "products";
	}
	
	@RequestMapping("/codi.do")
	public String codi() {
		
		return "codi";
	}
	
}
