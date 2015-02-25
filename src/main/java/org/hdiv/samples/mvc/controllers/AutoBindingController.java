package org.hdiv.samples.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.hdiv.samples.mvc.bean.Order;
import org.hdiv.samples.mvc.logic.AttacksExampleFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

/**
 * 
 * Class that controls the workflow of the Auto Binding vulnerability example.
 * 
 * Auto Binding vulnerability occurs when an attackers exploits a field that does not exist in the form. Then, Spring
 * will make an auto binding and fill the commands field sending it to the controller as it was a form field.
 * 
 */
@Controller
@SessionAttributes(types = Order.class)
public class AutoBindingController {

	@Autowired
	private AttacksExampleFacade attacksExampleFacade;

	@RequestMapping(value = { "/attacks/autoBinding/prepareAutoBinding", "/secure/autoBinding/prepareAutoBinding" })
	public String prepareAutoBinding() {
		return "/attacks/autoBinding/AutoBinding";
	}

	/**
	 * This method passes the paid and unpaid orders lists to the view.
	 * 
	 * @param username
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/attacks/autoBinding/processAutoBinding", "/secure/autoBinding/processAutoBinding" }, method = RequestMethod.GET)
	public String processAutoBinding(@RequestParam("username") String username, Model model) {

		List<Order> notPaidList = attacksExampleFacade.getNotPaidOrdersByUsername(username);
		model.addAttribute("orderList", notPaidList);

		List<Order> paidList = attacksExampleFacade.getPaidOrdersByUsername(username);
		model.addAttribute("paidOrderList", paidList);

		return "/attacks/autoBinding/ListAutoBinding";
	}

	/**
	 * Gets the order selected by the user, and passes to the view.
	 * 
	 * @param userid
	 * @param idOrder
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/attacks/autoBinding/modifyAutoBinding", "/secure/autoBinding/modifyAutoBinding" }, method = RequestMethod.GET)
	public String modifyAutoBinding(@RequestParam("userId") String userId, @RequestParam("orderId") int orderId,
			Model model) {

		Order order = attacksExampleFacade.getOrderById(userId, orderId);
		model.addAttribute("order", order);

		return "/attacks/autoBinding/ModifyAutoBinding";
	}

	/**
	 * This method updates an order.
	 * 
	 * @param order
	 * @return
	 */
	@RequestMapping(value = { "/attacks/autoBinding/updateAutoBinding", "/secure/autoBinding/updateAutoBinding" }, method = RequestMethod.POST)
	public String updateAutoBinding(@Valid Order order, Errors errors, SessionStatus sessionStatus) {

		if (errors.hasErrors()) {
			return "/attacks/autoBinding/ModifyAutoBinding";
		}
		sessionStatus.setComplete();

		attacksExampleFacade.updateOrder(order);

		return "/attacks/autoBinding/ModifyResult";
	}

	public void setAttacksExampleFacade(AttacksExampleFacade attacksExampleFacade) {
		this.attacksExampleFacade = attacksExampleFacade;
	}
}
