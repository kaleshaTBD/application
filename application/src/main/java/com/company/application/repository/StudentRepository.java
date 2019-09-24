package com.company.application.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.company.application.model.Student;




@Repository
public interface StudentRepository extends CrudRepository<Student, Long> {
    
   
	Student findById(long id);
    
}
