package org.hdiv.samples.mvc.bean;

import org.springframework.web.multipart.MultipartFile;

public class MultipartBean {

	private MultipartFile file;

	private String name;

	private String search;

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

}
