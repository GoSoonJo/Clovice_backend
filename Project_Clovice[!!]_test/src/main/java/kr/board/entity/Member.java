package kr.board.entity;

import lombok.Data;

@Data
public class Member {
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private int mem_birth;
	private String mem_gender;
	private String mem_email;
	private String mem_phone;

}
