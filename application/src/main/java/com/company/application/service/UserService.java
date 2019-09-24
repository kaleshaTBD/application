package com.company.application.service;

import com.company.application.model.User;

public interface UserService {
  
 public User findUserByEmail(String email);

public void saveUser(String fname, String lname, String email, String pwd);
}