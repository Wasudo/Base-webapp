package com.acn.yrs.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "ANSWERTYPES")
public class AnswerType {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private Integer id;

	@Column(name = "answertype", nullable = false)
	private String answerType;

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the answerType
	 */
	public String getAnswerType() {
		return answerType;
	}

	/**
	 * @param answerType the answerType to set
	 */
	public void setAnswerType(String answerType) {
		this.answerType = answerType;
	}
}
