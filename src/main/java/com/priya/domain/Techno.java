package com.priya.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Techno {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer techId;
	private String techName;

}
