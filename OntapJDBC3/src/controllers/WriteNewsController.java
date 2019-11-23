package controllers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NewsDAO;

@WebServlet("/anews/write-news")
public class WriteNewsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public WriteNewsController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int check = 0;
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		String detail = request.getParameter("detail");
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String created_at = sdf.format(date);
		int cat_id = Integer.parseInt(request.getParameter("cat_id"));
		
		NewsDAO newsDAO = new NewsDAO();
		check = newsDAO.writeNews(name, description, picture, detail, created_at, cat_id);
		request.setAttribute("check", check);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/anews/writeNews.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
