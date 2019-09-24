package com.company.application.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.application.model.User;
import com.company.application.repository.UserRepository;
import com.company.application.service.UserService;

import java.util.Arrays;
import java.util.HashSet;

@Service("userService")
public class UserServiceImpl implements UserService {
 
 @Autowired
 private UserRepository userRepository; 
 
 /*@Autowired
 private BCryptPasswordEncoder bCryptPasswordEncoder;
*/
 @Override
 public User findUserByEmail(String email) {
  return userRepository.findByEmail(email);
 }

 @Override
 public void saveUser(String fname, String lname, String email, String pwd) {
	
	 User user=new User();
  user.setFirstname(fname);	
  user.setLastname(lname);
  user.setEmail(email);
 // user.setPassword(bCryptPasswordEncoder.encode(pwd));
  user.setPassword(pwd);
  user.setActive(1);
  
  userRepository.save(user);
 }

}
