package com.sist.exam.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sist.exam.vo.Admin;

public class AdminDaoImpl implements AdminDao{

	private JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	@Override
	public List<Admin> getAdminList() {
		String sql = "SELECT * FROM ADMIN";
		
		return template.query(sql, new BeanPropertyRowMapper<Admin>(Admin.class));
	}
	
}
