package cn.jsp.Exp_03;

public class MyTools {
    public  static String change(String str){
        str = str.replace(">","&lt");
        str = str.replace("<","&gt");
        return str;

    }
}
