package com.priya.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="roleAuth")
public class Role {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long role_id;
	@Column(nullable=false)
	private String name;
}
