package org.hdiv.samples.mvc.controllers;

import java.util.List;

import org.hdiv.samples.mvc.bean.Account;
import org.hdiv.samples.mvc.bean.SampleGroup;
import org.hdiv.samples.mvc.logic.AttacksExampleFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Class that controls the workflow of the SQLInjection vulnerability example.
 * 
 * SQL injection is an attack made to a database-driven site.
 * 
 * It occurs when an attacker inserts SQL code in a form field. This results in
 * the potential manipulation of the statements performed on the database by the
 * end-user of the application.
 */
@Controller
public class SQLStringInjectionController {

	@Autowired
	private AttacksExampleFacade attacksExampleFacade;

	@RequestMapping(value = { "/attacks/SQLInjection/prepareSQLInjection", "/secure/SQLInjection/prepareSQLInjection" })
	public String prepareSQLInjection(Model model) {
		model.addAttribute("account", new Account());
		return "/attacks/SQLInjection/SQLStringInjection";
	}

	/**
	 * Gets the users Account list and sends it to the view.
	 * 
	 * @param account
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/attacks/SQLInjection/processSQLStringInjection",
			"/secure/SQLInjection/processSQLStringInjection" }, method = RequestMethod.POST)
	public String processSQLStringInjection(@Validated(SampleGroup.class) Account account, Errors errors, Model model) {

		if (errors.hasErrors()) {
			return "/attacks/SQLInjection/SQLStringInjection";
		}

		try {
			List<Account> localList = attacksExampleFacade.getUserAccount(account.getUserId());
			model.addAttribute("userAccounts", localList);
		} catch (DataAccessException localSQLException) {
			model.addAttribute("sqlMessage", localSQLException.getMessage());
		}
		return "/attacks/SQLInjection/ListStringInjection";
	}

	public void setAttacksExampleFacade(AttacksExampleFacade attacksExampleFacade) {
		this.attacksExampleFacade = attacksExampleFacade;
	}
}
