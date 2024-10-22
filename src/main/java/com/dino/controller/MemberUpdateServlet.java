package com.dino.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import com.dino.dao.MemberDAO;
import com.dino.dto.MemberVO;

@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a = request.getParameter("a");
		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(userid);
		request.setAttribute("mVo", mVo);
		if (a.equals("1")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/memberUpdate.jsp");
			dispatcher.forward(request, response);
		} else if (a.equals("2")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/memberdetail.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
			dispatcher.forward(request, response);
		}
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String admin = request.getParameter("admin");
        MemberVO mVo = new MemberVO();
        mVo.setUserid(userid);
        mVo.setPwd(pwd);
        mVo.setEmail(email);
        mVo.setPhone(phone);
        mVo.setAdmin(Integer.parseInt(admin));
        MemberDAO mDao = MemberDAO.getInstance();
        mDao.updateMember(mVo);
        response.sendRedirect("main.jsp");
	}

}
