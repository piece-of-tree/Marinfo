package jp.co.comnic.lesson.yoneyama.webapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.comnic.lesson.yoneyama.webapp.beans.Account;
import jp.co.comnic.lesson.yoneyama.webapp.dao.AccountDao;
import jp.co.comnic.lesson.yoneyama.webapp.dao.DaoException;

public class SignUpAction implements Action {

	@Override
	public Dispatcher execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		
		if (!password1.equals(password2)) {
			request.setAttribute("error", "Password doesn't much.");
			return new Forwarder(request, response, "sign-up");
		}
		
		try {
						
			Account account = AccountDao.findBy(userName);
			if (account.getUserName() != null) {
				request.setAttribute("error", "User already exists.");
				return new Forwarder(request, response, "sign-up");
			}
			
			account = new Account(userName, password1);
			AccountDao.save(account);
			
		} catch (DaoException e) {
			throw new ServletException(e);
		}
		
		return new Redirector(request, response, "login");
	}

}
