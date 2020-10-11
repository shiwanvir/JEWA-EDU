package com.app.university.result;

import org.springframework.stereotype.Service;

@Service
public class GradeService {
	
	public String getGrade(int marks) {
		String grade = "";
		if(marks >= 75) {
			grade = "A";
		}
		else if(marks >= 65 && marks < 75) {
			grade = "B";
		}
		else if(marks >= 55 && marks < 65) {
			grade = "C";
		}
		else if(marks >= 35 && marks < 55) {
			grade = "S";
		}
		else if(marks < 35) {
			grade = "F";
		}
		
		return grade;
	}

}
