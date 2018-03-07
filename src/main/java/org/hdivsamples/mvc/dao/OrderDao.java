package org.hdivsamples.mvc.dao;

import java.sql.ResultSet;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hdivsamples.mvc.bean.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao implements IOrderDao {

	private Log log = LogFactory.getLog(AccountDao.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private RowMapper<Order> rowMapper = new RowMapper<Order>() {
		public Order mapRow(ResultSet paramResultSet, int paramInt) throws java.sql.SQLException {
			Order localOrder = new Order();
			localOrder.setOrderId(paramResultSet.getInt("orderid"));
			localOrder.setUsername(paramResultSet.getString("userId"));
			localOrder.setOrderDate(paramResultSet.getDate("orderdate"));
			localOrder.setShipAddress1(paramResultSet.getString("shipaddr1"));
			localOrder.setShipAddress2(paramResultSet.getString("shipaddr2"));
			localOrder.setShipCity(paramResultSet.getString("shipcity"));
			localOrder.setShipState(paramResultSet.getString("shipstate"));
			localOrder.setShipZip(paramResultSet.getString("shipzip"));
			localOrder.setShipCountry(paramResultSet.getString("shipcountry"));
			localOrder.setCreditCard(paramResultSet.getString("creditcard"));
			localOrder.setExpiryDate(paramResultSet.getString("exprdate"));
			localOrder.setCardType(paramResultSet.getString("cardtype"));
			return localOrder;
		}
	};

	public List<Order> getOrdersByUsername(String paramString) {
		String str = "select * from orders where userid='" + paramString + "'";
		if (this.log.isInfoEnabled()) {
			this.log.info("sql:" + str);
		}

		return (List<Order>) this.jdbcTemplate.query(str, rowMapper);
	}

	public List<Order> getNotPaidOrdersByUsername(String paramString) {
		String str = "select * from orders where userid='" + paramString + "' and paid = false";
		if (this.log.isInfoEnabled()) {
			this.log.info("sql:" + str);
		}

		return (List<Order>) this.jdbcTemplate.query(str, rowMapper);
	}

	public List<Order> getPaidOrdersByUsername(String paramString) {
		String str = "select * from orders where userid='" + paramString + "' and paid = true";
		if (this.log.isInfoEnabled()) {
			this.log.info("sql:" + str);
		}

		return (List<Order>) this.jdbcTemplate.query(str, rowMapper);
	}

	public Order getOrderById(String userid, int orderId) {
		String str = "select * from orders where userid='" + userid + "' and orderid='" + orderId + "'";
		if (this.log.isInfoEnabled()) {
			this.log.info("sql:" + str);
		}

		return (Order) this.jdbcTemplate.queryForObject(str, rowMapper);
	}

	public void updateOrder(Order order) {
		String update = "update orders " + "set shipaddr1 = ?, " + "shipaddr2 = ?, " + "shipcity = ?, "
				+ "shipzip = ?, " + "shipcountry = ?, " + "creditcard = ?, " + "exprdate = ?, " + "cardtype = ?, "
				+ "paid = ? " + "where orderid = ? AND userId = ?";

		if (this.log.isInfoEnabled()) {
			this.log.info("sql:" + update);
		}

		this.jdbcTemplate.update(
				update,
				new Object[] { order.getShipAddress1(), order.getShipAddress2(), order.getShipCity(),
						order.getShipZip(), order.getShipCountry(), order.getCreditCard(), order.getExpiryDate(),
						order.getCardType(), order.isPaid(), order.getOrderId(), order.getUsername() });

	}

	public void setJdbcTemplate(JdbcTemplate paramJdbcTemplate) {
		this.jdbcTemplate = paramJdbcTemplate;
	}
}
