<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
            <jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的“书屋”</title>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
</style>
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
<h2 align="center">恭喜你超级管理员登录成功</h2>
<h3 align="right">欢迎你<jsp:getProperty name="loginBean" property="logname"/></h3>
<ul>
  <li><a href="View Books.jsp">浏览书店</a></li>
    <li><a href="Purchased books.jsp">已购图书</a></li>
  <li><a href="Del Book.jsp">删除图书</a></li>
  <li><a href="AddBook.jsp">增加图书</a></li>
  <li style="float:right"><a class="active" href="About.jsp">关于</a></li>
  
</ul>

<h2>浏览图书</h2>
<table border="1" width="600">
<tr>
   <td aligh="center" width="80">商品缩图</td>
   <td align="center">商品摘要</td>
</tr>
		<%
			String bm,name,price,info,img,op;
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
				out.println("</tr>");
			}
		%>		
</table>	
<a href="admin.jsp">退回主页</a>
</font></BODY>
</html>