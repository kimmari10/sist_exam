package com.sist.exam.dao;

import java.sql.SQLException;
import java.util.List;

import com.sist.exam.vo.Groups;

public interface GroupsDao {

	public List<Groups> getGroupList() throws SQLException, ClassNotFoundException;
	public int insert(Groups c) throws SQLException, ClassNotFoundException;
	public int update(String curr_name, String new_name) throws SQLException, ClassNotFoundException;
	public int delete(String group_name) throws SQLException, ClassNotFoundException;
	
	
}
