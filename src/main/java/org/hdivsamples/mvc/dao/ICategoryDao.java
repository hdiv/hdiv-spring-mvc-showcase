package org.hdivsamples.mvc.dao;

import java.util.List;

import org.hdivsamples.mvc.bean.Category;

public interface ICategoryDao {

	/**
	 * Get all the categories
	 * 
	 * @return List<Category>
	 */
	public List<Category> getCategoryList();
}
