package com.daotest.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daotest.dao.Dao;

@Service
public class DAOservice {
	// dao
	@Autowired
	Dao dao;
	
	public void insert(Map<String, String> d) {
		dao.insert(d);
	}
	
	public ArrayList<HashMap<String, String>> select(Map<String, String> ps) {
		return dao.selectAll(ps);
	}
	
	public HashMap<String, String> paging(Map<String, String> ps) {
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
		
		HashMap<String, String> page = dao.boardCount(bEanum);
		String entbcnt = page.get("ct");
		String lstbnum = page.get("cp");
		int pgN = Integer.parseInt(pgnum);
		
		int stn = ((pgN-1)/10)*10 + 1;
		int endn = stn + 10 - 1;
		
		HashMap<String, String> paging = new HashMap<String, String>();
		
		paging.put("pg", pgnum);
		paging.put("bEa", bEanum);
		paging.put("stn", Integer.toString(stn));
		paging.put("endn", Integer.toString(endn));
		paging.put("entbcnt", entbcnt);
		paging.put("lstbnum", lstbnum);
		
		return paging; 
	}
}
