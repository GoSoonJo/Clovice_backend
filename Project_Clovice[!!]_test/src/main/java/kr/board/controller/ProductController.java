package kr.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@RequestMapping("/product1.do")
	public String product1() {
		
		return "product1";
	}
	@RequestMapping("/product2.do")
	public String product2() {
		
		return "product2";
	}
	@RequestMapping("/product3.do")
	public String product3() {
		
		return "product3";
	}

	@RequestMapping("/top1.do")
	public String top1() {
		
		return "top1";
	}
}
