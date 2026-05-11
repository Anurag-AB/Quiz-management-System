package com.priya.domain;

import lombok.Data;

@Data
public class UserDto {

	private RoleDto role_Entity;
	private String role;
	private String password;
	private String email;
	private Long id;
	private String username;
}
