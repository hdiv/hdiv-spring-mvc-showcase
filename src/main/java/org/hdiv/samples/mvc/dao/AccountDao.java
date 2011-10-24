package org.hdiv.samples.mvc.dao;

import java.sql.ResultSet;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hdiv.samples.mvc.bean.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDao implements IAccountDao {
	
	private Log log = LogFactory.getLog(AccountDao.class);
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Account> getUserAccount(String paramString) {
		String str = "select * from account where userid='" + paramString + "'";
		if (this.log.isInfoEnabled()) {
			this.log.info("sql:" + str);
		}
		RowMapper<Account> rowMapper = new RowMapper<Account>() {
			public Account mapRow(ResultSet paramResultSet, int paramInt) throws java.sql.SQLException {
				Account localAccount = new Account();
				localAccount.setUserId(paramResultSet.getString("userid"));
				localAccount.setFirstName(paramResultSet.getString("firstname"));
				localAccount.setLastName(paramResultSet.getString("lastname"));
				localAccount.setEmail(paramResultSet.getString("email"));
				localAccount.setAddress1(paramResultSet.getString("addr1"));
				localAccount.setAddress2(paramResultSet.getString("addr2"));
				localAccount.setStatus(paramResultSet.getString("status"));
				localAccount.setCity(paramResultSet.getString("city"));
				localAccount.setState(paramResultSet.getString("state"));
				localAccount.setZip(paramResultSet.getString("zip"));
				localAccount.setCountry(paramResultSet.getString("country"));
				localAccount.setPhone(paramResultSet.getString("phone"));
				return localAccount;
			}
		};
		return this.jdbcTemplate.query(str, rowMapper);
	}

	public void setJdbcTemplate(JdbcTemplate paramJdbcTemplate) {
		this.jdbcTemplate = paramJdbcTemplate;
	}
}
