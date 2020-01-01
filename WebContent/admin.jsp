<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h2 align="center">恭喜你超级管理员登录成功</h2>
<h3 align="right">欢迎你<jsp:getProperty name="loginBean" property="logname"/></h3>
<ul>
  <li><a href="View Books.jsp">浏览书店</a></li>
    <li><a href="Purchased books.jsp">已购</a></li>
  <li><a href="Del Book.jsp">删除图书</a></li>
  <li><a href="#contact">增加图书</a></li>
  <li style="float:right"><a class="active" href="#about">关于</a></li>
  
</ul>

</body>
</html>