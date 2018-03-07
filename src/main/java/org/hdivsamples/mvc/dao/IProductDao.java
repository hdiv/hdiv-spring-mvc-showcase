package org.hdivsamples.mvc.dao;

import java.util.List;

import org.hdivsamples.mvc.bean.Product;

public interface IProductDao {
	/**
	 * Gets a list of products of the 'paramString' category
	 * 
	 * @param paramString
	 * @return List<Category>
	 */
	public List<Product> getProductListByCategory(String paramString);
}
