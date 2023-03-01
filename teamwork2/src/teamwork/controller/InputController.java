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

@WebServlet(urlPatterns = "/input")
public class InputController extends HttpServlet{

	private QuizService quizService;

	@Override
	public void init() throws ServletException {
		quizService = new QuizServiceImpl();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<Categories> listCategories = quizService.getCategories();
		req.setAttribute("listCategory", listCategories);

		req.getRequestDispatcher("WEB-INF/views/input.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}


}
