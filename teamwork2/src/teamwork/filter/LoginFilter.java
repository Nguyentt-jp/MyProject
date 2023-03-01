package teamwork.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import teamwork.model.User;
import teamwork.service.QuizService;
import teamwork.service.QuizServiceImpl;

@WebFilter(urlPatterns = { "/input" })
public class LoginFilter implements Filter {

	private List<User> listUser;
	private QuizService quizService;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		User user = listUser.get(0);
		String userString = request.getParameter("username");
		String passString = request.getParameter("password");
		if (request.getAttribute("logined") != null) {
			chain.doFilter(request, response);
		} else if (user.getUsername().equals(userString)
				&& user.getPassword().equals(passString)) {
			chain.doFilter(request, response);
		} else {
			request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		quizService = new QuizServiceImpl();
		System.out.println("Redirect Login Filter Finish!");
		listUser = quizService.getUser();
		System.out.println("Get User Finished!");
	}

}
