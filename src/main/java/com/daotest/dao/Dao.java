package com.daotest.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

import org.springframework.stereotype.Component;

import com.daotest.commons.Db;

@Component
public class Dao {
	// insert
	public void insert(Map<String, String> d) {
		String sql = String.format("insert into member_1 " + 
				"values(SEQ_mem_1.NEXTVAL, '%s', '%s', " + 
				"'%s', '%s', '%s', " + 
				"'%s', '%s', '%s')",
				d.get("user_name"), d.get("user_id"), d.get("user_pw"), d.get("email")
				, d.get("gender"), d.get("birthdate"), d.get("tel"), d.get("addr"));
		Db.executeUpdate(sql);
	}
	
	//count
	public HashMap<String, String> boardCount(String bEanum) {
		return Db.boardCount(bEanum);
	}
	
	//select
	public ArrayList<HashMap<String, String>> selectAll(Map<String, String> ps) {
		String pgnum = ps.get("pg");
		String bEanum = ps.get("bEa");
		if(bEanum == "" || Objects.isNull(bEanum)) {
			bEanum = "10";	
		} else {
			bEanum = ps.get("bEa");
		}
		
		if(pgnum == "" || Objects.isNull(pgnum)) {
			pgnum = "1";	
		} else {
			pgnum = ps.get("pg");
		}
		return Db.selectAll(pgnum, bEanum);
	}

}
