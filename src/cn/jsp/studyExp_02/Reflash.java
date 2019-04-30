package cn.jsp.studyExp_02;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimerTask;


public class Reflash {
    public void Timer() {

    }

    public void schedule(TimerTask task, long delay, long period) {

    }

    static String CT = null;

    static

    {
        Calendar calendar = new GregorianCalendar();
        String am_pm;
        int hour = calendar.get(Calendar.HOUR);
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);
        if (calendar.get(GregorianCalendar.AM_PM) == 0) {
            am_pm = "Am";
        } else {
            am_pm = "PM";
        }
        CT = hour + ":" + minute + ":" + second + " " + am_pm;
    }


    public String reflash() {
        return CT;
    }

}







