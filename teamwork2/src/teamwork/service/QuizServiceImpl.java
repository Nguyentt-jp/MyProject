package teamwork.service;

import java.util.List;

import teamwork.dao.QuizDao;
import teamwork.dao.QuizDaoImpl;
import teamwork.model.Questions;
import teamwork.model.TeamRegister;
import teamwork.model.User;
import testJPA.entity.Categories;

public class QuizServiceImpl implements QuizService {

	private QuizDao quizDao = new QuizDaoImpl();

	@Override
	public List<Questions> getData(int id) {
		return quizDao.getData(id);
	}

	@Override
	public void saveData(Categories categories) {
		quizDao.saveData(categories);
	}

	@Override
	public void updateData(Questions questions, int id) {
		quizDao.updateData(questions,id);
	}

	@Override
	public void deleteData(int id) {
		quizDao.deleteData(id);
	}

	@Override
	public List<User> getUser() {
		return quizDao.getUser();
	}

	@Override
	public void saveData(TeamRegister teamRegister) {
		quizDao.saveData(teamRegister);
	}

	@Override
	public void updateData(TeamRegister teamRegister) {
		quizDao.updateData(teamRegister);
	}

	@Override
	public List<Categories> getCategories() {
		return quizDao.getCategories();
	}

	@Override
	public List<TeamRegister> getTeamRegisters() {
		return quizDao.getTeamRegisters();
	}

}
