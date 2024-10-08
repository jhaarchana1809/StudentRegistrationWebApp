package com.nit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nit.entity.StudentDetails;
import com.nit.repository.StudentRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class StuentController {
	
	@Autowired
	private StudentRepository studentRepository;
	@GetMapping("/")
	private String loadIndexPage(Model model)
	{
		loadFormData(model);
		return "index";
	}

	private void loadFormData(Model model) {
		StudentDetails s=new StudentDetails();
		List<String> courseList=new ArrayList<String>();
		courseList.add("JAVA");
		courseList.add("C");
		courseList.add("C++");
		courseList.add("DOT NET");
		courseList.add("UI");
		courseList.add("MERN STACK");
		
		List<String> timingList= new ArrayList<String>();
		timingList.add("Morning");
		timingList.add("Afternoon");
		timingList.add("Evening");
		
		model.addAttribute("timings", timingList);
		model.addAttribute("courses", courseList);
		model.addAttribute("student", s);
	}
	
	@PostMapping("/registration")
	public String saveStudentData(Model model , StudentDetails student) {
		//TODO: process POST request
		
		loadFormData(model);
		System.out.println("#############################"+student);
		
		model.addAttribute("msg", "Register Successfully");
		
		return "index";
	}
	

}
