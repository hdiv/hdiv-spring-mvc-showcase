package org.hdivsamples.mvc.bean;

import java.io.Serializable;

public class Product implements Serializable {
	private String productId;
	private String categoryId;
	private String name;
	private String description;

	public String getProductId() {
		return this.productId;
	}

	public void setProductId(String paramString) {
		this.productId = paramString.trim();
	}

	public String getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(String paramString) {
		this.categoryId = paramString;
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
		return getName();
	}
}