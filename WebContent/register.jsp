<%@ page contentType="text/html;charset=GB2312" %>
<%request.setCharacterEncoding("gb2312");%>
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request"/>

<HTML>
<head>
<meta charset="UTF-8">
<title>�ҵġ����ݡ�</title>
</head>
<BODY background="img/bgImg.jpg" style=" background-repeat:no-repeat ;background-size:100% 100%;
background-attachment: fixed;"><Font size=5>
<h2 align="center">�ҵ�"����"</h2>
<style>.t{margin-top:80px;}</style>
<div align="center" class="t">
<FORM action="mzyRegister" method="post" name=form>
<table>
    �û�������ĸ�����֡��»������ĵȹ��ɣ�*עgg�͵��������д��
   <tr><td>*�û�����:</td><td><Input type=text name="logname" ></td>
       <td>*�û�����:</td><td><Input type=password name="password">
       </td></tr>
   <tr><td>*�ظ�����:</td><td>
       <Input type=password name="again_password"></td>
       <td>email:</td><td><Input type=text name="email"></td></tr>
       <tr><td><Input type=submit name="g" value="�ύ"></td> </tr>
</table>
</Form>
</div>
<div align="center">
<p> ע�ᷴ����
<jsp:getProperty name="userBean"  property="backNews" /> 
<table border=3>
     <tr><td>��Ա����:</td>
     <td><jsp:getProperty name="userBean" property="logname"/></td>
     </tr>
     <tr><td>email��ַ:</td>
     <td><jsp:getProperty name="userBean" property="email"/></td>
     </tr>
</table>
<hr>
<a href="login.jsp">��¼</a>
</div >
</Body></HTML>
