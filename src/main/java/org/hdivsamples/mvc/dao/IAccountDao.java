package org.hdivsamples.mvc.dao;

import java.util.List;

import org.hdivsamples.mvc.bean.Account;

public interface IAccountDao {
	/**
	 * Get user accouts by his username.
	 * 
	 * @param paramString
	 * @return List<Account>
	 */
	public List<Account> getUserAccount(String paramString);
}
