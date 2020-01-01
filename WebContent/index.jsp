<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<html>
<head>
<meta charset="UTF-8">
<title>我的“书屋”</title>
</head>
<BODY background="img/bgImg.jpg" style=" background-repeat:no-repeat ;background-size:100% 100%;
background-attachment: fixed;" ><font size=5>
  <%
	//装载MySQL5.5的JDBC驱动
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	//建立数据库连接
	String url ="jdbc:mysql://localhost:3306/eshop?user=root&password=&useUnicode=true&characterEncoding=gb2312";
	Connection conn= DriverManager.getConnection(url);
	//建立一个Statement对象，用于执行SQL语句
	Statement stat = conn.createStatement();
	//执行查询并得到查询结果
	String sql = "select * from shop";
	ResultSet rs = stat.executeQuery(sql);	
  %>   
  <body>
  <%   if(loginBean==null){
        response.sendRedirect("login.jsp");//重定向到登录页面
     }
     else {
       boolean b =loginBean.getLogname()==null||
                  loginBean.getLogname().length()==0;
       if(b)
         response.sendRedirect("login.jsp");//重定向到登录页面
     }
%>        
    <h2>在线购物</h2>
    <h3 align="right">欢迎你<jsp:getProperty name="loginBean" property="logname"/></h3>
 
    <hr> 
	<table border="1" width="650" height="450">
		<tr bgcolor="#dddddd">
			<td align="center" width="80">商品缩图</td>
			<td align="center">商品摘要</td>
			<td align="center" width="100">在线购买</td>
		</tr>
		<%
			String bm,name,price,info,img,op,id;
			//将查询结果集中的记录输出到页面上
			while (rs.next()){
				//从当前记录中读取各字段的值
                img = rs.getString("SP_PIC").trim();
				bm = rs.getString("SP_NO").trim();
				name = rs.getString("SP_NAME").trim();
				price = rs.getString("SP_PRICE").trim();
				info = rs.getString("SP_INFO").trim();
				
				out.println("<tr>");
				out.println("<td><img src='"+ img +"' border=0 height=60 width=60></td>");
				out.println("<td>");
				out.println("商品编号："+ bm +"<br>");
				out.println("商品名称："+ name +"<br>");
				out.println("商品价格："+ price +"元<br>");
				out.println("商品简介："+ info +"<br>");
				out.println("</td>");
				out.println("<td><a href='buy.jsp?op=add&bm="+bm+"'>放入购物车</a></td>");
				out.println("</tr>");
			}
		%>		
	</table>
	<br>
	<a href="cart.jsp">查看购物车</a>  
	<a href="buy.jsp?op=clear">清空购物车</a>	       
  </body>
</html>
