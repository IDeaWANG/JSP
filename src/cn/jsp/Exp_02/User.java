package cn.jsp.Exp_02;
public class User  implements java.io.Serializable {
    private String username = null;
    private String passwd = null;

    public User(){
    }

    public String getUsername (){//直接调用get（）方法；
        return username;
    }


    public String getPasswd (){ //直接调用set（）方法；
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public void setUsername(String username) {
        this.username = username;
    }
//    public String toString(){//重写tostring（）方法，返回的是username+passwd；
//        return "username"+username+","+"passwd"+passwd;
//    }
}

