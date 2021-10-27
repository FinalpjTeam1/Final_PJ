package com.heal.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	
	private String id;
	private String pw;
	private String nick;
	private String mobile;
	private String gender;
	private String age;
	private String last_login;
	private String entry_date;
	private String grade;

}
