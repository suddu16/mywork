import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validate {
    private static String str;
    public static void main(String s[]){
        str = "^((\\w)+(\\.(\\w)+)*(@[a-zA-Z]+)(\\.[a-zA-Z]+)*)$";
        Pattern p = Pattern.compile(str);
        Matcher m = p.matcher(s[0]);
        
        if(m.find()){
            System.out.println("Valid");
        }
        else{
            System.out.println("InValid");
        } 
        
    }
}