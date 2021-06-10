package com.cgv.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private Integer cmm_seq;
	private String cmm_id;
	private String cmm_name;
	private String cmm_pwd;
	private String cmm_email;
	private String cmm_phone;
	private String cmm_address;
	private Integer cmm_gen;
	private Date cmm_birth;
	private Integer cmm_terms;
	private Integer cmm_status;
	private Integer cmm_age_confirm;
	private Integer cmm_grade;
	private Integer cmm_type;
	
}
