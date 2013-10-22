package org.nhnnext.web;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Map {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@OneToMany(mappedBy = "map", fetch = FetchType.EAGER, cascade=CascadeType.REMOVE)
    private List<Comment> comments;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	//	length 글자수
	@Column(length=50, nullable=false)
	private String title;
	
	@Column(length=1000, nullable=false)
	private String contents;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	
	@Override
	public String toString() {
		return "Board [title=" + title + ", contents=" + contents + ", comment=" + comments +"]";
	}
	
	@Column(length=100)
	private String filename;

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public List<Comment> getComments() {
        return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
}