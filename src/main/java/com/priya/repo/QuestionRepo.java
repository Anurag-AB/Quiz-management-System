package com.priya.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.priya.domain.Question;
import com.priya.domain.Techno;

public interface QuestionRepo extends JpaRepository<Question, Integer>{
	
	@Query("select count(q) from Question q")
	public Integer countQuestion();
	
	
	/*
	 * public List<Question> findByTechId(Integer id);
	 */	
	
	  @Query("select q from Question q where q.techId.techId=:id") 
	  public List<Question> getTech(Integer id);
	  
	  @Query(value = "SELECT * FROM Question ORDER BY RANDOM()",nativeQuery = true)
	  List<Question> getRandomQuestions();


	 

}
