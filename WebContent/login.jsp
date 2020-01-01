<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<HTML>
<head>
<meta charset="UTF-8">
<title>我的“书屋”</title>
</head>
<BODY background="img/bgImg.jpg" style=" background-repeat:no-repeat ;background-size:100% 100%;
background-attachment: fixed;" ><font size=5>
<h2 align="center">我的"书屋"</h2>
<style>.t{margin-top:80px;}</style>
<div align="center" class="t">
<table border=1>
<tr> <th>登录</th></tr>
<FORM action="helpLogin" Method="post">
<tr><td>登录名称:<Input type=text name="logname"></td></tr>
<tr><td>输入密码:<Input type=password name="password"></td></tr>
<select name="type">
                <option value="1">普通用户</option>
                <option value="2">管理员</option>
            </select>
</table>
<Input type=submit name="g" value="登录">
</form>
</div>
<div align="center" >
登录反馈信息:<br>
<jsp:getProperty name="loginBean" property="backNews"/>
<br>登录名称:<br><jsp:getProperty name="loginBean" property="logname"/>
<div ></font>
<a href = "index.jsp?logname=<jsp:getProperty name="loginBean"
                                property="logname"/>">
   <h2>登录后进入书城选购图书</h2></a>
</BODY></HTML>
