package com.sist.exam.dao;

import java.sql.SQLException;
import java.util.List;

import com.sist.exam.vo.Admins;


public interface AdminsDao {
	public List<Admins> getAdminList() throws SQLException, ClassNotFoundException;
	public Admins getAdmin(String uid) throws SQLException, ClassNotFoundException;
	public int insert(Admins admin)throws SQLException, ClassNotFoundException;
	public int update(String id)throws SQLException, ClassNotFoundException;
	public int delete(String id)throws SQLException, ClassNotFoundException;
}
