package com.priya.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="userAuth")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	@Column(nullable=false)
	private String username;
	@Column(nullable=false,unique=true,updatable = true)
	private String email;
	@Column(nullable=false)
	private String password;
	@ManyToOne
	@JoinColumn(name="role_id")
	private Role role_Entity;
	
}
