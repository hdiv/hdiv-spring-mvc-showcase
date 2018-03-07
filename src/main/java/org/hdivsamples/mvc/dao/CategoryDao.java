package org.hdivsamples.mvc.dao;

import java.sql.ResultSet;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hdivsamples.mvc.bean.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDao implements ICategoryDao {

	private Log log = LogFactory.getLog(CategoryDao.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Category> getCategoryList() {
		String str = "select * from category";
		if (this.log.isInfoEnabled()) {
			this.log.info("sql:" + str);
		}
		RowMapper<Category> rowMapper = new RowMapper<Category>() {
			public Category mapRow(ResultSet paramResultSet, int paramInt) throws java.sql.SQLException {
				Category localCategory = new Category();
				localCategory.setCategoryId(paramResultSet.getString("catid"));
				localCategory.setName(paramResultSet.getString("name"));
				localCategory.setDescription(paramResultSet.getString("descn"));
				return localCategory;
			}
		};

		return this.jdbcTemplate.query(str, rowMapper);
	}

	public void setJdbcTemplate(JdbcTemplate paramJdbcTemplate) {
		this.jdbcTemplate = paramJdbcTemplate;
	}
}
