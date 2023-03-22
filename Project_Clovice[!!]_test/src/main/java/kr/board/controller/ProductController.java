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
		
		return "product1/top1";
	}
	@RequestMapping("/top2.do")
	public String top2() {
		
		return "product1/top2";
	}
	@RequestMapping("/top3.do")
	public String top3() {
		
		return "product1/top3";
	}
	
	@RequestMapping("/bottoms1.do")
	public String bottoms1() {
		
		return "product2/bottoms1";
	}
	@RequestMapping("/bottoms2.do")
	public String bottoms2() {
		
		return "product2/bottoms2";
	}
	@RequestMapping("/bottoms3.do")
	public String bottoms3() {
		
		return "product2/bottoms3";
	}
	
	@RequestMapping("/shoes1.do")
	public String shoes1() {
		
		return "product3/shoes1";
	}
	@RequestMapping("/shoes2.do")
	public String shoes2() {
		
		return "product3/shoes2";
	}
	@RequestMapping("/shoes3.do")
	public String shoes3() {
		
		return "product3/shoes3";
	}
	
	@RequestMapping("/recom1.do")
	public String recom1() {
		
		return "recom_codi/recom_codi1";
	}
	@RequestMapping("/recom2.do")
	public String recom2() {
		
		return "recom_codi/recom_codi2";
	}
	@RequestMapping("/recom3.do")
	public String recom3() {
		
		return "recom_codi/recom_codi3";
	}
	@RequestMapping("/recom4.do")
	public String recom4() {
		
		return "recom_codi/recom_codi4";
	}
	
}
