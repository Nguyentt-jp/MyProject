package teamwork.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamwork.service.QuizService;
import teamwork.service.QuizServiceImpl;
import testJPA.entity.Categories;

@WebServlet(urlPatterns = {"/cate"})
public class CategoriesController extends HttpServlet{
	private QuizService quizservice;
	private List<Categories> listCategories;

	@Override
	public void init() throws ServletException {
		quizservice = new QuizServiceImpl();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		listCategories = quizservice.getCategories();

		req.setAttribute("listCate", listCategories);

		req.getRequestDispatcher("WEB-INF/views/categories.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
