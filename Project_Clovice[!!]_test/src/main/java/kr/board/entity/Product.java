package kr.board.entity;

import lombok.Data;

@Data
public class Product {
	
	private int prod_num; 
	private int prod_main_cat; 
	private int prod_sub_cat; 
	private String prod_name;
	private String prod_brand;
	private String prod_url; 
	private String prod_img_url;

}
