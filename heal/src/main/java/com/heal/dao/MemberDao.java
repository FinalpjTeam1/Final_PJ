package com.heal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

import com.heal.dto.Member;


@Mapper
public interface MemberDao {
	
	/** login : return grade */
	public String login(String id, String pw);
	
	/** login : return domain */
	public Member loginToMember(String id, String pw);
	
	public Member idCheck(String MemberId);
	
	public int insertMember(Member dto);
	
	public boolean updateMember(Member dto);

}
