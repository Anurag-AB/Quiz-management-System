package com.priya.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.priya.domain.Question;
import com.priya.domain.QuestionDto;
import com.priya.domain.TechnoDto;
import com.priya.domain.User;

public interface FacultyServiceIntf {

	public String setData(QuestionDto questionDto);
//	public List<User> getAllFaculty(String name);
	public Page<Question> getAllQuestion(Pageable pageable);
	public void deleteQ(Integer qid);
	public String newTech(String tech);
	public List<String> getAllTechName();
}
