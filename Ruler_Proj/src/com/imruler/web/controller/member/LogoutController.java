package com.imruler.web.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.imruler.web.service.member.RulerMemberService;

@WebServlet("/sign/logout")
public class LogoutController extends HttpServlet {

	private RulerMemberService rulerMemberService;

	public LogoutController() {
		// TODO 기본생성자
		rulerMemberService = new RulerMemberService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO doGet
		HttpSession session = req.getSession();
		session.invalidate();

		resp.sendRedirect("../index");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO doPost
	}
}