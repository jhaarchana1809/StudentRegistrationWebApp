package com.nit.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nit.entity.StudentDetails;

public interface StudentRepository extends JpaRepository<StudentDetails, Integer> {

}
