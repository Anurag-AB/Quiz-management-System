package com.priya.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.priya.domain.Question;
import com.priya.domain.QuestionDto;
import com.priya.domain.Techno;
import com.priya.domain.User;
import com.priya.exception.QuestionException;
import com.priya.service.FacultyServiceIntf;

@Controller
public class FacultyController {
	
	@Autowired
	private FacultyServiceIntf facultyService;
	
	
	@GetMapping("/AddQuestion")
	public String questionPage(@ModelAttribute("res") QuestionDto questionDto)
	{
		return "redirect:getAllTech";
	}
	
	@PostMapping("/saveQuestion")
	public String saveQuestion(@ModelAttribute QuestionDto questionDto,Model m)
	{
		try
		{
		String setData = facultyService.setData(questionDto);
		System.out.println(setData);
		m.addAttribute("msg", setData);
		
		return "redirect:getAllTech";
		}
		catch(QuestionException qe)
		{
			throw qe;
		}
		
	}
	
	
/*	@GetMapping("/AllFaculty")
	public String showAllFaculty(@RequestParam("name")String name,Model m)
	{
		
		try
		{
			List<User> userList=facultyService.getAllFaculty(name);
			System.out.println(userList);
			m.addAttribute("name",name);
			m.addAttribute("users", userList);
			return "ShowAllData";
		}
		catch(QuestionException qe)
		{
			throw qe;
		}
		
	}
	*/
	
	@GetMapping("/AllQuestion")
	public String showAllQuestion(@PageableDefault(size = 2, page = 0) Pageable pageable, Model m) {
	    Page<Question> allQue = facultyService.getAllQuestion(pageable);
	    
	    // Check if there are no questions in the database
	    if (allQue.isEmpty()) {
	        return "redirect:/Faculty"; // Redirects to Faculty page if no data
	    }
	    
	    List<Question> question = allQue.getContent();
	    m.addAttribute("all", question);
	    m.addAttribute("page", allQue);
	    
	    return "AllQuestionShow";
	}

	

	@GetMapping("/deleteQuestion")
	public String deleteQuestion(Model m,@RequestParam("qid")Integer qid)
	{
		facultyService.deleteQ(qid);
		return "redirect:AllQuestion";
	}
	
	/*
	 * @GetMapping("/AddTech") public void addTechnology() {
	 * 
	 * }
	 */
	
	@GetMapping("/newTech")
	public String techData(@RequestParam("tech")String tech,Model m)
	{
		String newTech = facultyService.newTech(tech);
		m.addAttribute("msg", newTech);
		return "AddTech";
	}
	
	@GetMapping("/getAllTech")
	public String getAllRech(Model m)
	{
		
		List<String> allTechName = facultyService.getAllTechName();
		System.out.println(allTechName);
		String msg="Question Added Successfully";
		m.addAttribute("successMsg",msg);
		m.addAttribute("techName", allTechName);
		return "AddQuestion";
	}

}
