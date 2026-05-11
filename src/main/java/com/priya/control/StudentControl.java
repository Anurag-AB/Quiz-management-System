package com.priya.control;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.priya.domain.Question;
import com.priya.domain.Techno;
import com.priya.service.StudentIntf;

@Controller
public class StudentControl {

	@Autowired
	private StudentIntf stdService;
	
	/*
	@GetMapping("/AllTechName")
	public String getQuestion(Model m)
	{
		List<Techno> tech=stdService.getAllTechno();
		m.addAttribute("name", tech);
		return "DescribeTech";
	}
	
	
	
	@GetMapping("/getQuestion")
	public String getQuestionSpecific(@RequestParam("name")String name,Model m)
	{
		List<Question> question = stdService.getQuestion(name);
		//System.out.println(question+".........."+name);
		m.addAttribute("Questions", question);
		return "QuestionsQuize";
	}
	
	*/
	
	@GetMapping("/getQuestion")
	public String allQuestion(Model m)
	{
		List<Question> allQuestion = stdService.getAllQuestion();
		m.addAttribute("Questions", allQuestion);
		return "QuestionsQuize";
	}
	
	
	/*
	 * @PostMapping("/checkAns") public String checkAnswer(@RequestParam
	 * Map<String,String> question) {
	 * question.forEach((key,value)->System.out.println("key:"+key+"value:"+value));
	 * stdService.compaire(question); return ""; }
	 */
	
	
	@PostMapping("/checkAns")
	public String checkAnswers(@RequestParam List<Integer> questionIds, 
	                           @RequestParam Map<String, String> allParams, 
	                           Model model) {
	    List<String> selectedAnswers = new ArrayList<>();
	    
	    for (Integer qid : questionIds) {
	        String key = String.valueOf(qid); // Convert Integer to String

	        if (allParams.containsKey(key)) {
	            selectedAnswers.add(allParams.get(key));
	        } else {
	            selectedAnswers.add(""); // If no answer was selected
	        }
	    }

	    int score = stdService.calculateScore(questionIds, selectedAnswers);
	    
	    
	    //get the no of qn from db
	    int totalQuestions=stdService.getTotalQns();
	    
	    model.addAttribute("score", score);
	    
	    int percentage = (score * 100) / totalQuestions;
	    
	    model.addAttribute("score", score);
	    model.addAttribute("percentage", percentage);
	    

	    return "result";  // Show result.jsp
	}

	
	
	
	
}
