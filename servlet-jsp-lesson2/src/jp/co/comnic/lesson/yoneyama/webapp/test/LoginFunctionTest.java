package jp.co.comnic.lesson.yoneyama.webapp.test;

import static org.junit.Assert.assertThat;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.hamcrest.CoreMatchers.*;

class LoginFunctionTest {

	private static WebDriver driver;
	private static final String TOP_PAGE = "Top";
	private static final String LOGIN_PAGE = "Login";
	
	/**
	 * <p>テストの前に一度だけ実行</p>
	 */
	@BeforeAll
    public static void initialize() {

        //=====================================================
        // Tests for Google Chrome
        //=====================================================

        System.setProperty(
            "webdriver.chrome.driver",
            "./driver/chromedriver.exe"
        );

        // with Boot options
//        ChromeOptions options = new ChromeOptions();
//        options.addArguments("test-type");
//        driver = new ChromeDriver(options);

        driver = new ChromeDriver();
    }
	
	/**
     * <p>個々のテストの前に実行</p>
     */
    @BeforeEach
    public void beforeTest() {
        driver.get("http://localhost:8080/servlet-jsp-lesson/login.jsp");
    }

    /**
     * <p>ログイン成功を検証するテスト</p>
     *
     * @throws Exception
     */
    @Test
    public void testLoginForSuccess() throws Exception {

        login("John", "admin");
        assertThat(driver.getTitle(), is(TOP_PAGE));
        
        driver.navigate().back();

        login("Bill", "test");
        assertThat(driver.getTitle(), is(TOP_PAGE));
    }
    
    /**
     * <p>ログイン失敗を検証するテスト</p>
     *
     * @throws Exception
     */
    @Test
    public void testLoginForFailur() throws Exception {
    	
    	login("John", "false_password");
        assertThat(driver.getTitle(), is(LOGIN_PAGE));
        
        driver.navigate().back();
        
        login("Bill", "false_password");
        assertThat(driver.getTitle(), is(LOGIN_PAGE));
    }

    
    /**
     * <p>ログイン用ユーティリティ・メソッド</p>
     * 
     * @param userName
     * @param password
     * @throws Exception
     */
    private void login(String userName, String password) throws Exception {

    	WebElement userNameInput = driver.findElement(By.name("userName"));
    	WebElement passwordInput = driver.findElement(By.name("password"));
    	
    	userNameInput.clear();
    	userNameInput.sendKeys(userName);
    	passwordInput.sendKeys(password);

//        Thread.sleep(2000); // waiting 2sec （option for visual contact）

        driver.findElement(By.tagName("form")).submit();
        // use click() in case of <button>
        
//        Thread.sleep(2000);
    }

    /**
     * <p>すべてのテストが終了後、最後に呼び出される。</p>
     */
    @AfterAll
    public static void terminate() {
        driver.quit(); // automatically close browser (option)
    }
}
