package org.hdiv.samples.mvc.controllers;

import java.util.List;

import org.hdiv.samples.mvc.bean.Order;
import org.hdiv.samples.mvc.logic.AttacksExampleFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Class that controls the workflow of the Parameter Tampering vulnerability example.
 * 
 * Parameter tampering is a simple attack targeting the application business logic. This attack takes advantage of the
 * fact that many programmers rely on hidden or fixed fields (such as a hidden tag in a form or a parameter in a URL) as
 * the only security measure for certain operations. Attackers can easily modify these parameters to bypass the security
 * mechanisms that rely on them.
 * 
 */
@Controller
public class ParameterTamperingController {

	@Autowired
	private AttacksExampleFacade attacksExampleFacade;

	@RequestMapping(value = { "/attacks/parameterTampering/prepareSelectFieldTampering",
			"/secure/parameterTampering/prepareSelectFieldTampering" })
	public String prepareSelectFieldTampering(Model model) {
		Order order = new Order();
		order.setUsername("j2ee");
		model.addAttribute("order", order);
		return "/attacks/parameterTampering/SelectFieldTampering";
	}

	@RequestMapping(value = { "/attacks/parameterTampering/prepareHiddenFieldTampering",
			"/secure/parameterTampering/prepareHiddenFieldTampering" })
	public String prepareHiddenFieldTampering(Model model) {
		Order order = new Order();
		order.setUsername("j2ee");
		model.addAttribute("order", order);
		return "/attacks/parameterTampering/HiddenFieldTampering";
	}

	@RequestMapping(value = { "/attacks/parameterTampering/prepareLinkTampering",
			"/secure/parameterTampering/prepareLinkTampering" })
	public String prepareLinkTampering(Model model) {

		return "/attacks/parameterTampering/LinkParamTampering";
	}

	@RequestMapping(value = { "/attacks/parameterTampering/processListOrdersSelect",
			"/secure/parameterTampering/processListOrdersSelect" })
	public String processListOrdersSelect(Order order, Model model) {
		List<Order> localList = attacksExampleFacade.getOrdersByUsername(order.getUsername());
		model.addAttribute("orderList", localList);
		model.addAttribute("back", "prepareSelectFieldTampering");
		return "/attacks/parameterTampering/ListOrders";
	}

	@RequestMapping(value = { "/attacks/parameterTampering/processListOrdersHidden",
			"/secure/parameterTampering/processListOrdersHidden" })
	public String processListOrdersHidden(Order order, Model model) {
		List<Order> localList = attacksExampleFacade.getOrdersByUsername(order.getUsername());
		model.addAttribute("orderList", localList);
		model.addAttribute("back", "prepareHiddenFieldTampering");
		return "/attacks/parameterTampering/ListOrders";
	}

	@RequestMapping(value = { "/attacks/parameterTampering/processListOrdersLink",
			"/secure/parameterTampering/processListOrdersLink" })
	public String processListOrdersLink(Order order, Model model) {
		List<Order> localList = attacksExampleFacade.getOrdersByUsername(order.getUsername());
		model.addAttribute("orderList", localList);
		model.addAttribute("back", "prepareLinkTampering");
		return "/attacks/parameterTampering/ListOrders";
	}

	public void setAttacksExampleFacade(AttacksExampleFacade attacksExampleFacade) {
		this.attacksExampleFacade = attacksExampleFacade;
	}

}
