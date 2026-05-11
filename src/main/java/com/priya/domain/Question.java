package com.priya.domain;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class Question {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer qid;
	private String qname;
	private String opt1;
	private String opt2;
	private String opt3;
	private String opt4;
	
	private String correct_Opt;
	@ManyToOne
	@JoinColumn(name="techId")
	private Techno techId;


}
