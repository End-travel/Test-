package myservlet.control;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import mybean.data.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.data.*;

public class HandleAddBook extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception e) {}
	}
	public String handleString(String s)
	{
		try {byte bb[]=s.getBytes("iso-8859-1");
		s=new String(bb,"utf-8");
		}
		catch(Exception ee) {}
		return s;
	}
public void doPost(HttpServletRequest request,HttpServletResponse response)

		throws ServletException,IOException{
	String uri="jdbc:mysql://127.0.0.1/eshop?" + "user=root&password=&characterEncoding=gb2312";
	Connection con;
	PreparedStatement sql;
	AddBook userBean = new AddBook();
	request.setAttribute("userBean", userBean);
	String SP_NO= request.getParameter("SP_NO").trim();
	String SP_PRICE= request.getParameter("SP_PRICE").trim();
	String SP_PIC= request.getParameter("SP_PIC").trim();
	String SP_NAME= request.getParameter("SP_NAME").trim();
	String SP_INFO= request.getParameter("SP_INFO").trim();
	boolean boo=SP_NAME.length()>0;
    String backNews="";
    try{   con=DriverManager.getConnection(uri);
           String insertCondition="INSERT INTO shop VALUES (?,?,?,?,?)";
           sql=con.prepareStatement(insertCondition);
           if(boo)
           { 
        	 sql.setString(1,handleString(SP_NO));
        	 sql.setString(2,handleString(SP_PIC));
        	 sql.setString(3,handleString(SP_NAME));
        	 sql.setString(4,handleString(SP_PRICE));
        	 sql.setString(5,handleString(SP_INFO));
        	 
             int m=sql.executeUpdate();
             if(m!=0){
                backNews="添加成功";
                userBean.setBackNews(backNews);
                userBean.setSP_NAME(handleString(SP_NAME));
             }
           }
           con.close();
    }
    catch(SQLException exp) {
    	backNews="添加失败" + exp;
    	userBean.setBackNews(backNews);
    }
    RequestDispatcher dispatcher= 
  	      request.getRequestDispatcher("AddBook.jsp");
  	      dispatcher.forward(request, response);//转发
  	   }
  	   public  void  doGet(HttpServletRequest request,HttpServletResponse response)
  	                        throws ServletException,IOException {
  	      doPost(request,response);
  	   }
	}


