package kr1;

import jakarta.servlet.http.HttpServletRequest;

public class Validator {	
	public boolean validateAll(HttpServletRequest req, String[] params) {
		for(String param : params) {
			String value = req.getParameter(param);
			
			if (value == null) return false;
			if (value.length() == 0) return false;
		}
		
		return true;
	}
}
