package teamwork.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import teamwork.config.HibernateConfig;
import teamwork.model.Questions;
import teamwork.model.TeamRegister;
import teamwork.model.User;
import testJPA.entity.Categories;

public class QuizDaoImpl implements QuizDao {

	private Session session = HibernateConfig.getSessionFactory().openSession();

	@Override
	public List<TeamRegister> getTeamRegisters() {
		if (session!=null) {
			List<TeamRegister> listTeamRegisteres = null;
			try {
				Transaction transaction = session.beginTransaction();
				listTeamRegisteres = session.createQuery("from TeamRegister", TeamRegister.class).list();
				transaction.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return listTeamRegisteres;
		}else {
			return null;
		}
	}

	@Override
	public List<Categories> getCategories() {
		if (session!=null) {
			List<Categories> listCategories = null;
			try {
				Transaction transaction = session.beginTransaction();
				listCategories = session.createQuery("from Categories", Categories.class).list();
				transaction.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return listCategories;
		}else {
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Questions> getData(int id) {
		if (session!=null) {
			List<Questions> listQuestions = null;
			try {
				List<Categories> listCategories;
				Transaction transaction = session.beginTransaction();
//				List<Object[]> listObjects = session.createQuery("from Questions q inner join q.category_id with q.category_id = 1").list();
				listCategories = session.createQuery("from Categories c where c.id_category = :id").setParameter("id", id).list();

				listQuestions=listCategories.get(0).getQuestions();

				transaction.commit();
//				listObjects.forEach(System.out::println);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return listQuestions;
		}else {
			return null;
		}
	}

	@Override
	public List<User> getUser() {
		if (session!=null) {
			List<User> listUsers = null;
			try {
				Transaction transaction = session.beginTransaction();
				listUsers = session.createQuery("from Quizuser", User.class).list();
				transaction.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return listUsers;
		}else {
			return null;
		}
	}

	@Override
	public void saveData(Categories categories) {
		if (session!=null) {
			try {
				Transaction transaction = session.beginTransaction();
				session.save(categories);
				transaction.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void updateData(Questions questions, int id) {
		if (session!=null) {
			try {
				Transaction transaction = session.beginTransaction();
				Categories categories = session.get(Categories.class, id);
				List<Questions> listQuestions = new ArrayList<>();
				listQuestions.add(questions);
				categories.setQuestions(listQuestions);
				session.update(categories);
				transaction.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void deleteData(int id) {
		if (session!=null) {
			try {
				Transaction transaction = session.beginTransaction();
				Questions question = session.get(Questions.class, id);
				if (question != null) {
					session.delete(question);
				}
				transaction.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void saveData(TeamRegister teamRegister) {
		if (session!=null) {
			try {
				Transaction transaction = session.beginTransaction();
				session.save(teamRegister);
				transaction.commit();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void updateData(TeamRegister teamRegister) {
		if (session!=null) {
			try {
				Transaction transaction = session.beginTransaction();
				session.update(teamRegister);
				transaction.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
