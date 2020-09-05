package com.itperson.dto;

public class SQuestion extends Question{
	private String answer;

	public SQuestion() {};

	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "SQuestion [answer=" + answer + ", getCode()=" + getCode() + ", getQuestion()=" + getQuestion()
				+ ", getStuCode()=" + getStuCode() + ", getType()=" + getType() + "]";
	}

}
