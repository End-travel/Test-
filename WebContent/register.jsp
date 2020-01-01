<%@ page contentType="text/html;charset=GB2312" %>
<%request.setCharacterEncoding("gb2312");%>
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request"/>

<HTML>
<head>
<meta charset="UTF-8">
<title>我的“书屋”</title>
</head>
<BODY background="img/bgImg.jpg" style=" background-repeat:no-repeat ;background-size:100% 100%;
background-attachment: fixed;"><Font size=5>
<h2 align="center">我的"书屋"</h2>
<style>.t{margin-top:80px;}</style>
<div align="center" class="t">
<FORM action="mzyRegister" method="post" name=form>
<table>
    用户名由字母、数字、下划线中文等构成，*注gg释的项必须填写。
   <tr><td>*用户名称:</td><td><Input type=text name="logname" ></td>
       <td>*用户密码:</td><td><Input type=password name="password">
       </td></tr>
   <tr><td>*重复密码:</td><td>
       <Input type=password name="again_password"></td>
       <td>email:</td><td><Input type=text name="email"></td></tr>
       <tr><td><Input type=submit name="g" value="提交"></td> </tr>
</table>
</Form>
</div>
<div align="center">
<p> 注册反馈：
<jsp:getProperty name="userBean"  property="backNews" /> 
<table border=3>
     <tr><td>会员名称:</td>
     <td><jsp:getProperty name="userBean" property="logname"/></td>
     </tr>
     <tr><td>email地址:</td>
     <td><jsp:getProperty name="userBean" property="email"/></td>
     </tr>
</table>
<hr>
<a href="login.jsp">登录</a>
</div >
</Body></HTML>
