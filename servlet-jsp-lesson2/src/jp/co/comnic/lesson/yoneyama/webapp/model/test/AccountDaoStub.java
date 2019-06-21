package jp.co.comnic.lesson.yoneyama.webapp.model.test;

import jp.co.comnic.lesson.yoneyama.webapp.beans.Account;

public class AccountDaoStub {

	public static Account findBy(String userName, String password) {
		
		Account account = new Account();
		
		if (userName.equals("John") && password.equals("admin")) {
			account.setUserName(userName);
			account.setAuthenticated(true);
		}
		
		return account;
	}
}
