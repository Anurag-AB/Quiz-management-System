package com.priya.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.priya.domain.User;
import com.priya.domain.UserDto;
import com.priya.service.ServiceIntf;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MyControl {

	@Autowired
	private ServiceIntf service;
	

	@RequestMapping("/")
	public String welcome()
	{
		return "Welcome";
	}
	
	@RequestMapping("/signUp")
	public String signUp(@ModelAttribute("signUpDto")UserDto userDto)
	{
		return "signUp";
	}
	
	
	
	@RequestMapping("/saveData")
	public String storeUser(@ModelAttribute("signUpDto")UserDto userDto,Model m)
	{
		String msg=service.saveData(userDto);
		m.addAttribute("message",msg);
		return "signUp";
	}
	
	@GetMapping("/login")
	public String login(@ModelAttribute("result")UserDto userDto)
	{
		
		return "LoginPage";
	}
	
	@PostMapping("/checkLogin")
	public String ckeckLogin(@ModelAttribute("result")UserDto userDto,HttpServletRequest request)
	{
		System.out.println(userDto.getEmail()+"in controller"+userDto.getPassword());
		String s=service.checkLoginService(userDto,request);
		System.out.println(s+"in ssssssss");
		return s;
	}
	
	@GetMapping("/Student")
	public void studentDashBoard()
	{
		//if we need to redirect a jsp then we neednot require to return anything
	}
	
	@GetMapping("/Faculty")
	public String facultyDashBoard(Model m)
	{
		Integer students = service.countStudent();
		m.addAttribute("studentCount", students);
		
		Integer countStf=service.countFaculty();
		m.addAttribute("Staffs", countStf);
		
		Integer countQns=service.countQuestions();
		m.addAttribute("qnCount", countQns);
		
		//Integer countTech=service.countTech();
		//m.addAttribute("tech", countTech);
		return "Faculty";
	}
	
	@GetMapping("/Admin")
	public String adminDashBoard(Model m)
	{
		Integer students = service.countStudent();
		m.addAttribute("studentCount", students);
		
		Integer countStf=service.countFaculty();
		m.addAttribute("Staffs", countStf);
		
		Integer countQns=service.countQuestions();
		m.addAttribute("qnCount", countQns);
		
		//Integer countTech=service.countTech();
		//m.addAttribute("tech", countTech);
		return "Admin";
	}
	
	@GetMapping("/ShowAllStudent")
	public String DataInTabular(@RequestParam("name")String name, Model model)
	{
		try {
			List<UserDto> studentDtoList=service.showAllStudentData(name);
			//System.out.println(name);
			model.addAttribute("users", studentDtoList);
			model.addAttribute("name",name);
			
			return "ShowAllData";
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			throw new RuntimeException("Data Not found");
		}
		
	}
	
	@GetMapping("/delete")
	public String deleteOneData(@RequestParam("id")Long id)
	{
		String name=service.removeOneData(id);
		return "redirect:ShowAllStudent?name="+name;
	}
	
	@GetMapping("/update")
	public String updateData(@RequestParam("id")Long id,@RequestParam("roleName")String name,Model m)
	{
		UserDto user=service.editData(id,name);
		user.setRole(name);
		m.addAttribute("student", user);
	return "editPage";
	}
	
	
	
	@PostMapping("/updateSubmit")
	public String updateSubmit(@ModelAttribute UserDto userDto)
	{
		
		service.updateData(userDto);
		
		return "redirect:ShowAllStudent?name="+userDto.getRole();
	}
	
	@GetMapping("/AddUser")
	public void AdminUser()
	{
		
	}
	
	@PostMapping("/AdminAddUser")
	public String addUserAdmin(@ModelAttribute("AdminSignUpDto")UserDto userDto,Model model)
	{
		System.out.println("AdminAddUser:::::::::::"+userDto.getRole());
		String result=service.addUser(userDto);
		model.addAttribute("message", result);
		return "redirect:AddUser";
	}
	//for logout Session
	@GetMapping("/logout")
    public String logout(HttpServletRequest request) {
		System.out.println("Logout Sucessfull");
        request.getSession().invalidate();  
        return "redirect:login";           
    }
	
	@GetMapping("/forget")
	public void forgetPassword()
	{
		
	}
	
	@PostMapping("/getPassword")
	public String getPassword(@RequestParam("email")String mail,Model m)
	{
		System.out.println(mail);
		String pass=service.getPass(mail);
		System.out.println(pass+"service");
		m.addAttribute("password", pass);
		return "forget";
	}
	
	
}
