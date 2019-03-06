package com.daotest.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.daotest.service.DAOservice;

@Controller
public class DAOcontroller {
	
	// service
	@Autowired
	DAOservice ds;
	
	// 요청 GET / daotest.do, 폼 : daotest.jsp
	@GetMapping("/daotest.do")
	public String daoForm() {
		return "daotest";
	}
	
	// 요청 POST / daotest.do, 인서트 : daolist.jsp
	@RequestMapping(value="/daotest.do", method=RequestMethod.POST)
	public String daoInsert(@RequestParam Map<String, String> ps) {
		ds.insert(ps);
		return "redirect:/daolist.do";	
	}
	
	@RequestMapping("/daolist.do")
	public ModelAndView daoList(@RequestParam Map<String, String> m) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("lists", ds.select(m));
		System.out.println(ds.select(m));
		mv.addObject("page", ds.paging(m));
		mv.setViewName("daolist");
		return mv;
	}
}
