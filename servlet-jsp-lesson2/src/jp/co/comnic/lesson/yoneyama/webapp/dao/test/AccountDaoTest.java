package jp.co.comnic.lesson.yoneyama.webapp.dao.test;

import static org.hamcrest.beans.SamePropertyValuesAs.samePropertyValuesAs;

import java.io.FileInputStream;

import org.dbunit.DBTestCase;
import org.dbunit.PropertiesBasedJdbcDatabaseTester;
import org.dbunit.database.DatabaseConfig;
import org.dbunit.dataset.IDataSet;
import org.dbunit.dataset.xml.FlatXmlDataSetBuilder;
import org.dbunit.ext.mysql.MySqlDataTypeFactory;
import org.junit.jupiter.api.Test;

import static org.junit.Assert.assertThat;
import static org.hamcrest.CoreMatchers.*;

import jp.co.comnic.lesson.yoneyama.webapp.beans.Account;
import jp.co.comnic.lesson.yoneyama.webapp.dao.AccountDao;

public class AccountDaoTest extends DBTestCase {
	
	public AccountDaoTest(String name) throws Exception {
	    super(name);

	    System.setProperty(PropertiesBasedJdbcDatabaseTester.DBUNIT_DRIVER_CLASS,
	                       "org.mariadb.jdbc.Driver" );
	    System.setProperty(PropertiesBasedJdbcDatabaseTester.DBUNIT_CONNECTION_URL,
	                       "jdbc:mariadb://localhost/test" );
	    System.setProperty(PropertiesBasedJdbcDatabaseTester.DBUNIT_USERNAME,
	                       "root" );
	    System.setProperty(PropertiesBasedJdbcDatabaseTester.DBUNIT_PASSWORD,
	                       "mariadb" );
	}

	@Override
	protected void setUpDatabaseConfig(DatabaseConfig config) {
	    // MySQL固有のデータ型変換を行うための設定
	    config.setProperty(DatabaseConfig.PROPERTY_DATATYPE_FACTORY,
	                       new MySqlDataTypeFactory());
	}

	@Override
	protected IDataSet getDataSet() throws Exception {
	    return new FlatXmlDataSetBuilder()
	                   .build(new FileInputStream("data/dataset.xml"));
	}
	
	@Test
	public void testFindById() throws Exception{

	    // 期待される結果を表すEntityの生成
	    Account expectedAccount = new Account("John", "admin");
	    expectedAccount.setAuthenticated(true);
	   
	    // 実際に取得するEntity
	    Account actualAccount = AccountDao.findBy("John", "admin");
	    // lastLoginTimeの値は事前に設定不可なので取得したEntityの値をコピー
	    expectedAccount.setLastLoginTime(actualAccount.getLastLoginTime());

	    // 等しいかどうか確認
	    assertThat(actualAccount, is(samePropertyValuesAs(expectedAccount)));
	}
}
