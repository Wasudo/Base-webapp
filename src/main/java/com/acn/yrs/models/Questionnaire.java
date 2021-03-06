package com.acn.yrs.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="QUESTIONNAIRE")
public class Questionnaire {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private int id;

	@ManyToOne
	@JoinColumn(name = "assessmentid")
	private Assessment assessment;

	@ManyToOne
	@JoinColumn(name = "questionid")
	private Question question;

	@ManyToOne
	@JoinColumn(name = "answerid")
	private Answer answer;

	@Column(name = "answertxt")
	private String answerTxt;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the assessment
	 */
	public Assessment getAssessment() {
		return assessment;
	}

	/**
	 * @param assessment the assessment to set
	 */
	public void setAssessment(Assessment assessment) {
		this.assessment = assessment;
	}

	/**
	 * @return the question
	 */
	public Question getQuestion() {
		return question;
	}

	/**
	 * @param question the question to set
	 */
	public void setQuestion(Question question) {
		this.question = question;
	}

	/**
	 * @return the answer
	 */
	public Answer getAnswer() {
		return answer;
	}

	/**
	 * @param answer the answer to set
	 */
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}

	/**
	 * @return the answerTxt
	 */
	public String getAnswerTxt() {
		return answerTxt;
	}

	/**
	 * @param answerTxt the answerTxt to set
	 */
	public void setAnswerTxt(String answerTxt) {
		this.answerTxt = answerTxt;
	}
}
