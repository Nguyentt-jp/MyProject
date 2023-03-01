package teamwork.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teamwork.model.Questions;
import teamwork.service.QuizService;
import teamwork.service.QuizServiceImpl;

@WebServlet(urlPatterns = {"/save"})
public class SaveController extends HttpServlet{

	private QuizService quizService;

	@Override
	public void init() throws ServletException {
		quizService = new QuizServiceImpl();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String[] arrCorrectAnwser = req.getParameterValues("correct_answer");
		String[] arrCategories = req.getParameterValues("category");

 		Questions questions = new Questions();
		questions.setQuestion_name(req.getParameter("quesname"));
		questions.setOption_1(req.getParameter("option1"));
		questions.setOption_2(req.getParameter("option2"));
		questions.setOption_3(req.getParameter("option3"));
		questions.setOption_4(req.getParameter("option4"));
		questions.setCorrect_answer(arrCorrectAnwser[0]);

		quizService.updateData(questions,Integer.parseInt(arrCategories[0]));

		HttpSession session = req.getSession();
		session.setAttribute("logined", session);

		req.getRequestDispatcher("/input").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
