package org.hdiv.samples.mvc.dao;

import java.util.List;

import org.hdiv.samples.mvc.bean.Category;

public interface ICategoryDao {

	/**
	 * Get all the categories
	 * 
	 * @return List<Category>
	 */
	public List<Category> getCategoryList();
}
