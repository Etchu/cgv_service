package com.cgv.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	@GetMapping("/login")
	public String getLogin() {
		return "/member/login";
	}
	
	@GetMapping("/join")
	public String getJoin() {
		return "/member/join";
	}
	
	@GetMapping("/logout")
	public String getLogout(HttpSession session) {
		session.setAttribute("memberInfo", null);
		session.invalidate();
		return "redirect:/";
	}
}
