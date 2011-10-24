package org.hdiv.samples.mvc.logic;

import java.util.List;

import org.hdiv.samples.mvc.bean.Account;
import org.hdiv.samples.mvc.bean.Category;
import org.hdiv.samples.mvc.bean.Order;
import org.hdiv.samples.mvc.bean.Product;

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
