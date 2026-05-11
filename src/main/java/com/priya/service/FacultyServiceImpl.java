package com.priya.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.priya.domain.Question;
import com.priya.domain.QuestionDto;
import com.priya.domain.Role;
import com.priya.domain.Techno;
import com.priya.domain.TechnoDto;
import com.priya.domain.User;
import com.priya.exception.QuestionException;
import com.priya.repo.QuestionRepo;
import com.priya.repo.RoleRepo;
import com.priya.repo.TechnoRepo;
import com.priya.repo.UserRepo;

@Service
public class FacultyServiceImpl implements FacultyServiceIntf {

	@Autowired
	private QuestionRepo qRepo;
	
	@Autowired
	private TechnoRepo tRepo;
	
	@Autowired
	private UserRepo uRepo;
	
	@Autowired
	private RoleRepo rRepo;
	
	
	
	public String setData(QuestionDto questionDto)
	{
		Question question = new Question();
		
		BeanUtils.copyProperties(questionDto, question);
		
		 Techno techno = tRepo.findByTechName(questionDto.getTechnoName());
		question.setTechId(techno);
		
		Question save = qRepo.save(question);
		if(save!=null)
		{
			return "Question Saved Sucessfully";
		}
		else
		{
			throw new QuestionException("Problem occured");
		}
		
		
	}
	
/*	public List<User> getAllFaculty(String name)
	{
		Role role=rRepo.findByName(name);
		
		List<User> allFaculty = uRepo.getAllRoleByObject(role);
		
		return allFaculty;
		
	}                 */

	@Override
	public Page<Question> getAllQuestion(Pageable pageable) {
		

		Page<Question> all = qRepo.findAll(pageable);
		//System.out.println(all);	
		
		
		return all;
	}
	
	public void deleteQ(Integer qid)
	{
		qRepo.deleteById(qid);
	}
	
	public String newTech(String name)
	{
		Techno techDto=new Techno();
		//BeanUtils.copyProperties(name, techDto);
		techDto.setTechName(name);
		
		Techno saved = tRepo.save(techDto);
		
		if(saved!=null)
		{
			return "Technology Added";
		}
		
		else {
			return "Did't Add Technology";
		}
	}

	@Override
	public List<String> getAllTechName() {
		

		List<String> allName = tRepo.getAllName();
		
		return allName;
	}
}
