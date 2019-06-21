package jp.co.comnic.lesson.yoneyama.webapp.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import jp.co.comnic.lesson.yoneyama.webapp.beans.Account;

@WebFilter("/*")
public class AuthenticateFilter implements Filter {

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		String servletPath = ((HttpServletRequest) request).getServletPath();
		HttpSession session = ((HttpServletRequest) request).getSession();

		Account account = (Account) session.getAttribute("account");
		
		if (PathMatcher.matches(servletPath) || (account != null && account.isAuthenticated())) {

			// Request Filter
			// ↑↑↑↑↑↑↑↑↑↑↑↑↑↑
			chain.doFilter(request, response);
			// ↓↓↓↓↓↓↓↓↓↓↓↓↓↓
			// Response Filter
		} else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	@Override
	public void destroy() {
	}
}
