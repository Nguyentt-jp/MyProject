package teamwork.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamwork.model.Questions;
import teamwork.service.QuizService;
import teamwork.service.QuizServiceImpl;

@WebServlet(urlPatterns = { "/startgame" })
public class StartGameController extends HttpServlet implements Runnable {

	private QuizService quizService;
	private List<Questions> listQuestions;
	private int score;
	private String correct;

	@Override
	public void init() throws ServletException {
		if (quizService==null) {
			quizService= new QuizServiceImpl();
		}
		System.out.println("New QuizService Finished!");
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cateID = req.getParameter("cate_id");
		if (cateID!=null) {
			listQuestions = quizService.getData(Integer.parseInt(cateID));
		}
		String page = req.getParameter("page");
		if (page == null) {
			page = "0";
			score = 0;
		}
		int j= Integer.parseInt(page);
		int k= Integer.parseInt(page);

		if (Integer.parseInt(page) > listQuestions.size() - 1) {
			page = String.valueOf(Integer.parseInt(page)-1);
		}else {
			k++;
			correct = "";
		}

		Questions q = listQuestions.get(Integer.parseInt(page));

		if (j!=0) {
			Questions q1 = listQuestions.get(Integer.parseInt(page)-1);
			correct = q1.getCorrect_answer();

			if (q1.getCorrect_answer().equals(req.getParameter("option1"))) {
				score += 100;
			} else if (q1.getCorrect_answer().equals(req.getParameter("option2"))) {
				score += 100;
			} else if (q1.getCorrect_answer().equals(req.getParameter("option3"))) {
				score += 100;
			} else if (q1.getCorrect_answer().equals(req.getParameter("option4"))) {
				score += 100;
			}else {
				score+=0;
			}
		}

		req.setAttribute("answerdata", q.getCorrect_answer());

		if (Integer.parseInt(page) < listQuestions.size() - 1) {
			j++;
		}

		List<Questions> qList = new ArrayList<>();
		qList.add(q);

		int cout = listQuestions.size();

		req.setAttribute("size", cout);
		req.setAttribute("listQues", qList);
		req.setAttribute("page", j);
		req.setAttribute("k", k);
		req.setAttribute("score", score);

		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("WEB-INF/views/startgame.jsp").forward(req, resp);
	}

	@Override
	public void run() {
	}
}
