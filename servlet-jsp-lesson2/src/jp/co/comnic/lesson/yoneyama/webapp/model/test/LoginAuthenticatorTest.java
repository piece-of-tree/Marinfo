package jp.co.comnic.lesson.yoneyama.webapp.model.test;

import static org.junit.Assert.assertThat;

import static org.hamcrest.CoreMatchers.*;
import static org.hamcrest.Matchers.samePropertyValuesAs;

import org.junit.jupiter.api.Test;

import jp.co.comnic.lesson.yoneyama.webapp.beans.Account;
import jp.co.comnic.lesson.yoneyama.webapp.dao.DaoException;
import jp.co.comnic.lesson.yoneyama.webapp.model.LoginAuthenticator;

class LoginAuthenticatorTest {

	@Test
	void testAuthenticateSuccess() {
		try {
			
			Account actualAccount = LoginAuthenticator.authenticate("John", "admin");
			
			Account expectedAccount = new Account();
			expectedAccount.setUserName("John");
			expectedAccount.setAuthenticated(true);
			expectedAccount.setLastLoginTime(actualAccount.getLastLoginTime());
			
			assertThat(actualAccount, is(samePropertyValuesAs(expectedAccount)));
			
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	void testAuthenticateFailure() {
		try {
			
			Account actualAccount = LoginAuthenticator.authenticate("John", "");
			Account expectedAccount = new Account();
						
			assertThat(actualAccount, is(samePropertyValuesAs(expectedAccount)));
			
			actualAccount = LoginAuthenticator.authenticate("", "admin");
			assertThat(actualAccount, is(samePropertyValuesAs(expectedAccount)));
			
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
