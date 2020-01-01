<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<ul>
  <li><a href="View Books.jsp">浏览书店</a></li>
    <li><a href="Purchased books.jsp">已购图书</a></li>
  <li><a href="Del Book.jsp">删除图书</a></li>
  <li><a href="#contact">增加图书</a></li>
  <li style="float:right"><a class="active" href="About.jsp">关于</a></li>
  
</ul>

<font size=6><p>1、项目来源及背景<br>
求知书店在取得连年盈利后，希望开辟一个信息的销售阵营。在市场部为期一个月的市场调研之后，发现目前网络购物已经被大众所认可，且成为众多宅男宅女们的不二之选的信息时代，因此求知书店准备投入大笔资金开发一个B2B的网上购书平台。该平台应具备界面美观、大方；功能操作简便、快捷；采用技术先进、稳定等特点。<br>
2、系统需求分析
2.1 需求描述<br>
BookStore是一个在因特网上销售图书的电子商务系统，图书发行公司可以通过这个电子商务系统销售自己的图书，消费者可以通过该系统订购自己要买的图书。
消费者通过BookStore的用户界面，可以浏览图书，查询每本图书的详细信息，在浏览图书的过程中，如果消费者对某本图书感兴趣，则可以将其添加到购物车。消费者随时可以查看购物车中的状况，并及时更新。购物活动完成后，消费者需要结帐。
系统需要提供用户注册和登录的接口，此外，还需要向图书管理员提供维护图书信息的接口。

</p></font>
<br><br>
<h3 align="right">项目来源:17软五莫志颖</h3>
</body>
</html>