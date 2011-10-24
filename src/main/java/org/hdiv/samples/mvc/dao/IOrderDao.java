package org.hdiv.samples.mvc.dao;

import java.util.List;

import org.hdiv.samples.mvc.bean.Order;

public interface IOrderDao {
	/**
	 * This method obtains a list of all Orders of the user, specified by his
	 * username (paramString).
	 * 
	 * @param paramString
	 * @return List<Order>
	 */
	public List<Order> getOrdersByUsername(String paramString);

	/**
	 * Obtain a list of the unpaid orders of the user specified by username
	 * (paramString)
	 * 
	 * @param paramString
	 * @return List<Order>
	 */
	public List<Order> getNotPaidOrdersByUsername(String paramString);

	/**
	 * Obtain a list of the paid orders of the user specified by username
	 * (paramString)
	 * 
	 * @param paramString
	 * @return List<Order>
	 * @return
	 */
	public List<Order> getPaidOrdersByUsername(String paramString);

	/**
	 * 
	 * Get the order specified by the User Id and the Order Id
	 * 
	 * @param userid
	 * @param orderId
	 * @return Order order
	 */
	public Order getOrderById(String userid, int orderId);

	/**
	 * Updates an Order
	 * 
	 * @param order
	 */
	public void updateOrder(Order order);

}
