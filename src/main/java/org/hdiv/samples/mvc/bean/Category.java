package org.hdiv.samples.mvc.bean;

import java.io.Serializable;

public class Category implements Serializable {
	private String categoryId;
	private String name;
	private String description;
	private String image;

	public String getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(String paramString) {
		this.categoryId = paramString.trim();
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String paramString) {
		this.image = paramString;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String paramString) {
		this.name = paramString;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String paramString) {
		this.description = paramString;
	}

	public String toString() {
		return getCategoryId();
	}
}