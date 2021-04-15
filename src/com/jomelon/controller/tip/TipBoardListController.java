package com.jomelon.controller.tip;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/tipBoardList.do")
public class TipBoardListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		execute(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		execute(request,response);
	}
	
	protected void execute(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		request.setAttribute("contentPage", "/tipboard/BoardList.jsp");
		request.getRequestDispatcher("/view/template/main.jsp").forward(request, response);
		
	}
}
