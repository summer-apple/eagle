package com.eagle.entity;

// Generated 2015-9-20 14:24:31 by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Newstype generated by hbm2java
 */
@Entity
@Table(name = "newstype", catalog = "eagle")
public class Newstype implements java.io.Serializable {

	private Integer id;
	private String name;

	public Newstype() {
	}

	public Newstype(String name) {
		this.name = name;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
