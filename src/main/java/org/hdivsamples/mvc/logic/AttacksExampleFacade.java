package org.hdivsamples.mvc.logic;

import java.util.List;

import org.hdivsamples.mvc.bean.Account;
import org.hdivsamples.mvc.bean.Category;
import org.hdivsamples.mvc.bean.Order;
import org.hdivsamples.mvc.bean.Product;

public interface AttacksExampleFacade {

	public List<Account> getUserAccount(String paramString);

	public List<Order> getOrdersByUsername(String paramString);

	public List<Order> getNotPaidOrdersByUsername(String paramString);

	public List<Order> getPaidOrdersByUsername(String paramString);

	public Order getOrderById(String userid, int orderId);

	public void updateOrder(Order order);

	public List<Category> getCategoryList();

	public List<Product> getProductListByCategory(String paramString);

}
