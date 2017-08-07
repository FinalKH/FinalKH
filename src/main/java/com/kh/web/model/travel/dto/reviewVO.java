package com.kh.web.model.travel.dto; 
  
import java.util.Date; 
  
public class reviewVO { 
    private int bno; 
    private String rsubject; 
    private String rcontent; 
    private Date indate; //작성일 
    public int getBno() { 
        return bno; 
    } 
    public void setBno(int bno) { 
        this.bno = bno; 
    } 
    public String getRsubject() { 
        return rsubject; 
    } 
    public void setRsubject(String rsubject) { 
        this.rsubject = rsubject; 
    } 
    public String getRcontent() { 
        return rcontent; 
    } 
    public void setRcontent(String rcontent) { 
        this.rcontent = rcontent; 
    } 
    public Date getIndate() { 
        return indate; 
    } 
    public void setIndate(Date indate) { 
        this.indate = indate; 
    } 
     
    //to String() 
    @Override 
    public String toString(){ 
        return "reviewVO [bno= " + bno + ", subject= "+rsubject+", content= "+rcontent 
                + ", indate= "+indate+" ]"; 
    } 
} 