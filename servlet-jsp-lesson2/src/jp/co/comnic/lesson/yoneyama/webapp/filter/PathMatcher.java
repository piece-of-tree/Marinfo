package jp.co.comnic.lesson.yoneyama.webapp.filter;

public class PathMatcher {

	public static boolean matches(String path) {
		
		if (path.matches("/login.do") || 
			path.matches("/sign-up.*") ||
		    path.endsWith(".*(.css)|(.js)|(.gif)|(.png)|(.jpg)")) {
			
			return true;
		}
		
		return false;
	}
}
