package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import logic.JsyService;

@Controller
public class ReplyController {
	@Autowired
	JsyService service;
}
