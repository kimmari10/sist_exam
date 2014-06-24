package com.sist.exam.dao;

import java.sql.SQLException;
import java.util.List;

import com.sist.exam.vo.Admin;


public interface AdminDao {
	public List<Admin> getAdminList() throws SQLException, ClassNotFoundException;
	public Admin getAdmin(String uid) throws SQLException, ClassNotFoundException;
	public int insert(Admin admin)throws SQLException, ClassNotFoundException;
	public int update(String id)throws SQLException, ClassNotFoundException;
	public int delete(String id)throws SQLException, ClassNotFoundException;
}
