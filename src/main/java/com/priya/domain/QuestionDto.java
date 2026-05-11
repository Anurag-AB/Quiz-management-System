package com.priya.domain;


import lombok.Data;

@Data
public class QuestionDto {

	private Integer qid;
	private String qname;
	private String opt1;
	private String opt2;
	private String opt3;
	private String opt4;
	
	private String correct_Opt;

	private String technoName;
	//private Techno techId;

}
