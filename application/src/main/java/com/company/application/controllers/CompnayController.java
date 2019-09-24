package com.company.application.controllers;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.application.model.Student;
import com.company.application.repository.StudentRepository;



@Controller
@RequestMapping("/company/")
public class CompnayController {

	private final StudentRepository studentRepository;

	@Autowired
	public CompnayController(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}

	
	@GetMapping("add_data")
	public String showSignUpForm(Student student) {
		return "add-student";
	}

	@GetMapping("list")
	public String showUpdateForm(Model model) {
		model.addAttribute("students", studentRepository.findAll());
		return "index";
	}

	@PostMapping("add")
	public String addStudent(@Valid Student student, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "add-student";
		}
		
		System.out.println(student.getMf11_createdBy());
		Date d=new Date();
		d.getTime();
		DateFormat formatter=new SimpleDateFormat("yyyyMMdd HH:mm:ss");
		String dateStr = formatter.format(d);
		student.setMf11_createdOn(dateStr);

		studentRepository.save(student);
		return "redirect:list";
	}

	@GetMapping("edit/{id}")
	public String showUpdateForm(@PathVariable("id") long id, Model model) {
		Student student = studentRepository.findById(id);
		model.addAttribute("student", student);
		return "update-student";
	}

	@PostMapping("update/{id}")
	public String updateStudent(@PathVariable("id") long id, @Valid Student student, BindingResult result,
			Model model) throws ParseException {
		if (result.hasErrors()) {
			student.setId(id);
			return "update-student";
		}
		
		System.out.println(student.getMf11_reactivatedBye()+"-"+student.getMf11_deactivatedBy());
		
		if(student.getMf11_reactivatedBye().equals("-"))
		{
			System.out.println("1111111111");
			student.setMf11_lastModifiedBy(student.getMf11_deactivatedBy());
		}
		else {
			System.out.println("2222222222");
			student.setMf11_lastModifiedBy(student.getMf11_reactivatedBye());
			
		}
		
		
		Date d=new Date();
		d.getTime();
		DateFormat formatter=new SimpleDateFormat("yyyyMMdd HH:mm:ss");
		String dateStr = formatter.format(d);
		
		student.setMf11_deactivatedOn(dateStr);
		student.setMf11_lastModifiedOn(dateStr);
		student.setMf11_reactivatedOn(dateStr);
		
		studentRepository.save(student);
		model.addAttribute("students", studentRepository.findAll());
		return "index";
	}

	@GetMapping("delete/{id}")
	public String deleteStudent(@PathVariable("id") long id, Model model) {
		Student student = studentRepository.findById(id);
		studentRepository.delete(student);
		model.addAttribute("students", studentRepository.findAll());
		return "index";
	}
}
