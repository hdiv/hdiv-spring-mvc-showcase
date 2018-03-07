package org.hdivsamples.mvc.bean;

import org.springframework.web.multipart.MultipartFile;

public class MultipartBean {

	private MultipartFile file;

	private String name;

	private String search;

	private int hiddenValue;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public int getHiddenValue() {
		return hiddenValue;
	}

	public void setHiddenValue(int hiddenValue) {
		this.hiddenValue = hiddenValue;
	}

}
