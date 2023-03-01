package teamwork.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamwork.model.TeamRegister;
import teamwork.service.QuizService;
import teamwork.service.QuizServiceImpl;

@WebServlet(urlPatterns = {"/highscore"})
public class HighScoreController extends HttpServlet{

	private QuizService quizService;
	private List<TeamRegister> listScores;

	@Override
	public void init() throws ServletException {
		quizService = new QuizServiceImpl();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		if (req.getParameter("team-name")!=null) {
			TeamRegister teamRegister = new TeamRegister();
			teamRegister.setTeamname(req.getParameter("team-name"));
			teamRegister.setScores(Integer.parseInt(req.getParameter("score")));
			quizService.saveData(teamRegister);
		}

		listScores=quizService.getTeamRegisters();
		req.setAttribute("listName", listScores);

		req.getRequestDispatcher("WEB-INF/views/highscore.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
