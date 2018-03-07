package org.hdivsamples.mvc.controllers;

import javax.validation.Valid;

import org.hdivsamples.mvc.bean.Message;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Class that controls the workflow of the Cross Site Scripting vulnerability
 * example.
 * 
 * XSS occurs when an attacker uses a web application to send malicious code,
 * generally in the form of a script, to a different end user.
 * 
 * These flaws are quite widespread and occur anywhere a web application uses
 * input from a user in the output it generates without validating it.
 */
@Controller
public class XSSController {

	@RequestMapping(value = { "/attacks/xss/prepareXSS", "/secure/xss/prepareXSS" })
	public String prepareXSS(Model model) {
		model.addAttribute(new Message());
		return "/attacks/xss/xss";
	}

	/**
	 * Gets the message sent by the user and passes it to the view.
	 * 
	 * @param message
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/attacks/xss/processXSS", "/secure/xss/processXSS" })
	public String xssResult(@Valid Message message, Errors errors, Model model) {
		if (errors.hasErrors()) {
			return "/attacks/xss/xss";
		}

		model.addAttribute("message", message.getMsgText());
		return "/attacks/xss/xssResults";
	}
}
