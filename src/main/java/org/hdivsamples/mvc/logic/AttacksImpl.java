package org.hdivsamples.mvc.logic;

import java.util.List;

import org.hdivsamples.mvc.bean.Account;
import org.hdivsamples.mvc.bean.Category;
import org.hdivsamples.mvc.bean.Order;
import org.hdivsamples.mvc.bean.Product;
import org.hdivsamples.mvc.dao.IAccountDao;
import org.hdivsamples.mvc.dao.ICategoryDao;
import org.hdivsamples.mvc.dao.IOrderDao;
import org.hdivsamples.mvc.dao.IProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttacksImpl implements AttacksExampleFacade {

	@Autowired
	private IAccountDao accountDao;

	@Autowired
	private ICategoryDao categoryDao;

	@Autowired
	private IProductDao productDao;

	@Autowired
	private IOrderDao orderDao;

	public void setAccountDao(IAccountDao paramIAccountDao) {
		this.accountDao = paramIAccountDao;
	}

	public void setCategoryDao(ICategoryDao paramICategoryDao) {
		this.categoryDao = paramICategoryDao;
	}

	public void setProductDao(IProductDao paramIProductDao) {
		this.productDao = paramIProductDao;
	}

	public void setOrderDao(IOrderDao paramIOrderDao) {
		this.orderDao = paramIOrderDao;
	}

	public List<Account> getUserAccount(String paramString) {
		return this.accountDao.getUserAccount(paramString);
	}

	public List<Order> getOrdersByUsername(String paramString) {
		return this.orderDao.getOrdersByUsername(paramString);
	}

	public List<Order> getNotPaidOrdersByUsername(String paramString) {
		return this.orderDao.getNotPaidOrdersByUsername(paramString);
	}

	public List<Order> getPaidOrdersByUsername(String paramString) {
		return this.orderDao.getPaidOrdersByUsername(paramString);
	}

	public List<Category> getCategoryList() {
		return this.categoryDao.getCategoryList();
	}

	public List<Product> getProductListByCategory(String paramString) {
		return this.productDao.getProductListByCategory(paramString);
	}

	public Order getOrderById(String userid, int orderId) {
		return this.orderDao.getOrderById(userid, orderId);
	}

	public void updateOrder(Order order) {
		this.orderDao.updateOrder(order);

	}

}
