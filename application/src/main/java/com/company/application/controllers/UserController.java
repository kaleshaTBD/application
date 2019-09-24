package com.company.application.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.company.application.model.User;
import com.company.application.service.UserService;



@Controller
public class UserController {

 @Autowired
 private UserService userService;
 
 @RequestMapping(value= {"/"}, method=RequestMethod.GET)
 public String login() {
  return "login";
 }
 
 
 
 @RequestMapping(value= {"/login_user"}, method=RequestMethod.POST)
 public ResponseEntity<?> login_user(@RequestParam("email") String email,@RequestParam("password") String pwd) {
	 
	 User user = userService.findUserByEmail(email);
	 
	 List<Object> l= new ArrayList<Object>();
	 if(user.getEmail() == "" || user.getEmail().isEmpty())
	 {}
	 else
	 {
		 String pass=user.getPassword();
		 
		 	if(pwd.equals(pass))
		 	{
		 		System.out.println(user.getEmail());
		 		l.add(user.getFirstname()+" "+user.getLastname());
		 	}
	 }
  return new ResponseEntity<Object>(l,HttpStatus.OK);
 }
 
 @RequestMapping(value= {"/signup"}, method=RequestMethod.GET)
 public String signup() {
  return "signup";
 }
 
 @RequestMapping(value= {"/signup"}, method=RequestMethod.POST)
 public ResponseEntity<?> createUser(@RequestParam("firstname") String fname, @RequestParam("lastname") String lname,
		 @RequestParam("email") String email,@RequestParam("password") String pwd) {
  
   userService.saveUser(fname,lname,email,pwd);
  
  
  return new ResponseEntity<String>("Added",HttpStatus.OK);
 }
 
	/*
	 * @RequestMapping(value= {"/home/home_data"}, method=RequestMethod.POST) public
	 * ResponseEntity<?> home(@RequestParam("email") String email) {
	 * System.out.println(email); User user = userService.findUserByEmail(email);
	 * String a=user.getFirstname(); String b=user.getLastname(); List<Object> l=
	 * new ArrayList<Object>(); l.add(a); l.add(b);
	 * 
	 * return new ResponseEntity<Object>(l,HttpStatus.OK); }
	 */
 
 @RequestMapping(value= {"/access_denied"}, method=RequestMethod.POST)
 public ResponseEntity<?> accessDenied(@RequestParam("email") String email) {
	 
 User user = userService.findUserByEmail(email);
	 
	 List<Object> l= new ArrayList<Object>();
	 if(user.getEmail() == "" || user.getEmail().isEmpty())
	 {}
	 else
	 {
		 		l.add(user.getFirstname()+" "+user.getLastname());
	 } 
	 
  return new ResponseEntity<Object>(l,HttpStatus.OK);
 }
}
