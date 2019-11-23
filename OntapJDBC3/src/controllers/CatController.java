package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import bean.News;
import dao.CategoryDAO;
import dao.NewsDAO;

@WebServlet("/anews/cat")
public class CatController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CatController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int cat_id = Integer.parseInt(request.getParameter("cid"));
		
		NewsDAO newsDAO = new NewsDAO();
		List<News> newsListByCat_id = newsDAO.getNewsByCat_id(cat_id);
		request.setAttribute("newsListByCat_id", newsListByCat_id);
		
		CategoryDAO cateDAO = new CategoryDAO();
		Category cateItem = cateDAO.getCateItem(cat_id);
		request.setAttribute("cateItem", cateItem);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/anews/cat.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
