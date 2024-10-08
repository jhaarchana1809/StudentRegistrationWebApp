package com.nit.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table
@Data
public class StudentDetails {
	@Id
	
	private Integer id;
	private String name;
	private String email;
	private String gender;
	private String course;

}
