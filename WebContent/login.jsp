<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<HTML>
<head>
<meta charset="UTF-8">
<title>�ҵġ����ݡ�</title>
</head>
<BODY background="img/bgImg.jpg" style=" background-repeat:no-repeat ;background-size:100% 100%;
background-attachment: fixed;" ><font size=5>
<h2 align="center">�ҵ�"����"</h2>
<style>.t{margin-top:80px;}</style>
<div align="center" class="t">
<table border=1>
<tr> <th>��¼</th></tr>
<FORM action="helpLogin" Method="post">
<tr><td>��¼����:<Input type=text name="logname"></td></tr>
<tr><td>��������:<Input type=password name="password"></td></tr>
<select name="type">
                <option value="1">��ͨ�û�</option>
                <option value="2">����Ա</option>
            </select>
</table>
<Input type=submit name="g" value="��¼">
</form>
</div>
<div align="center" >
��¼������Ϣ:<br>
<jsp:getProperty name="loginBean" property="backNews"/>
<br>��¼����:<br><jsp:getProperty name="loginBean" property="logname"/>
<div ></font>
<a href = "index.jsp?logname=<jsp:getProperty name="loginBean"
                                property="logname"/>">
   <h2>��¼��������ѡ��ͼ��</h2></a>
</BODY></HTML>
