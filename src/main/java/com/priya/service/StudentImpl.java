package com.priya.service;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.priya.domain.Question;
import com.priya.domain.Techno;
import com.priya.repo.QuestionRepo;
import com.priya.repo.TechnoRepo;
import com.priya.repo.UserRepo;

@Service
public class StudentImpl implements StudentIntf {

	@Autowired
	private UserRepo uRepo;
	
	@Autowired
	private QuestionRepo qRepo;
	
	@Autowired
	private TechnoRepo tRepo;
	
	public List<Techno> getAllTechno()
	{
		List<Techno> trepo=tRepo.findAll();
		
		return trepo;
	}
	
	public List<Question> getAllQuestion()
	{
		List<Question> all = qRepo.getRandomQuestions();
		return all;
	}
	
	/*
	public List<Question> getQuestion(String name)
	{
		Integer techId=tRepo.getTechId(name);
		System.out.println(techId);
		
		List<Question> qlist=qRepo.getTech(techId);
		//System.out.println(qlist);
		return qlist;
	}
	
	
	 * public Integer compaire(Map<String, String> selectedAns) { Map<String,String>
	 * dbAns=new HashMap<>();
	 * System.out.println(dbAns+"............select from databse"); List<Question>
	 * all = qRepo.findAll(); for(Question qn:all) { String
	 * id=String.valueOf(qn.getQid()); String corrected=qn.getCorrect_Opt();
	 * System.out.println(id+" "+corrected); dbAns.put(id, corrected); } return 0; }
	 */
	
	public int calculateScore(List<Integer> questionIds, List<String> selectedAnswers) {
	    int score = 0;
	    //System.out.println(questionIds);

	    for (int i = 0; i < questionIds.size(); i++) {
	        Integer qid = questionIds.get(i);
	        	//System.out.println(qid);
	        // Using Optional to handle missing questions safely
	        Optional<Question> questionOpt = qRepo.findById(qid);

	        if (questionOpt.isPresent()) {
	            Question question = questionOpt.get();
	            	//System.out.println(question.getCorrect_Opt());
	            // Compare selected answer with the correct option stored in the database
	            if (question.getCorrect_Opt().equals(selectedAnswers.get(i))) {
	                score++;
	            }
	        }
	    }
	    return score;
	}

	@Override
	public Integer getTotalQns() {
		 return qRepo.countQuestion();
	}
	


	

}
