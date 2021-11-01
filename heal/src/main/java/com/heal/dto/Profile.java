package com.heal.dto;

import lombok.Data;

@Data
public class Profile {
	
	private String id;
	private String pno;
	private String intro;
	private String[] interest;
	
	/** 파일 업로드용 */
	private int fno;
	private String fileName;     //저장할 파일
	private String fileOriName;  //실제 파일
	private String fileUrl;

}
