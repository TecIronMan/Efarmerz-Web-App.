package DataBaseCon;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegEx1 {

	public static boolean
    isValidPassword(String password)
    {
 
        String regex = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$";
        Pattern p = Pattern.compile(regex);
 
        if (password == null) {
            return false;
        }
 
        Matcher m = p.matcher(password);
 
        return m.matches();
    }
 
	public static boolean
    isValidEmail(String password)
    {
 
        String regex = "^(.+)@(.+)$";
        Pattern p = Pattern.compile(regex);
 
        if (password == null) {
            return false;
        }
 
        Matcher m = p.matcher(password);
 
        return m.matches();
    }
	
	public static boolean
    isValidMobileNo(String password)
    {
 
        String regex = "(0/91)?[7-9][0-9]{9}";
        Pattern p = Pattern.compile(regex);
 
        if (password == null) {
            return false;
        }
 
        Matcher m = p.matcher(password);
 
        return m.matches();
    }
	
	public static boolean
    isValidName(String password)
    {
 
        String regex = "[A-Za-z][A-Za-z]{2,20}$";
        Pattern p = Pattern.compile(regex);
 
        if (password == null) {
            return false;
        }
 
        Matcher m = p.matcher(password);
 
        return m.matches();
    }
	

}
