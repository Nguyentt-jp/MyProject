package teamwork.dao;

import java.util.List;

import teamwork.model.User;
import teamwork.service.QuizService;
import teamwork.service.QuizServiceImpl;

public class Test {
	public static void main(String[] args) {
		QuizService quizService = new QuizServiceImpl();
		/*List<User> listQuestions = quizService.getUser();

		for (User questions : listQuestions) {
			System.out.println(questions.getUsername());
		}*/
		/*Questions questions = new Questions();
		questions.setId_question(2);
		questions.setQuestion_name("khong co gi dau ma?");
		questions.setOption_1("1");
		questions.setOption_2("2");
		questions.setOption_3("3");
		questions.setOption_4("4");
		questions.setCorrect_answer("B");

		quizService.deleteData(1);*/

		List<User> listar = quizService.getUser();
//		List<Questions> listarr = quizService.getData(1);

//		listarr.forEach(name->System.out.println(name.getQuestion_name()));

		listar.forEach(name->System.out.println(name.getUsername()));

//		TeamRegister teamRegister = new TeamRegister();
//		teamRegister.setScores(200);
//		teamRegister.setTeamname("Nguyen");
//		quizService.saveData(teamRegister);
//		List<TeamRegister> list = quizService.getTeamRegisters();
//		list.forEach(name1->System.out.println(name1.getScores()+name1.getTeamname()));
	}
}
