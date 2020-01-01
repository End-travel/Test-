package mybean.data;
import java.sql.*;
public class QueryBean{
   String databaseName="";        //数据库名
   String tableName="";           //表名
   String user=""       ;         //用户
   String password="" ;            //密码 
   StringBuffer queryResult;     //查询结果
   public QueryBean(){
      queryResult=new StringBuffer();
      try{  Class.forName("com.mysql.jdbc.Driver");
      }
      catch(Exception e) {} 
   }
   public void setDatabaseName(String s){
      databaseName=s.trim();
      queryResult=new StringBuffer();  
   }
   public String getDatabaseName(){
      return databaseName;
   }
   public void setTableName(String s){
      tableName=s.trim();
      queryResult=new StringBuffer();
   }
   public String getTableName(){
      return tableName;
   }
   public void setPassword(String s){
      password=s.trim();
      queryResult=new StringBuffer();
   }
   public String getPassword(){
      return password;
   }
   public void setUser(String s){
      user=s.trim();
      queryResult=new StringBuffer();
   }
   public String getUser(){
      return user;
   } 
   public StringBuffer getQueryResult(){
      Connection con;
      Statement sql; 
      ResultSet rs;
      try{  queryResult.append("<table border=1>"); 
            String uri="jdbc:mysql://127.0.0.1/"+databaseName;
            con=DriverManager.getConnection(uri,user,password);
            DatabaseMetaData metadata=con.getMetaData();
            ResultSet rs1=metadata.getColumns(null,null,tableName,null);
            int 字段个数=0;
            queryResult.append("<tr>");
            while(rs1.next()){
               字段个数++;
               String clumnName=rs1.getString(4);
               queryResult.append("<td>"+clumnName+"</td>");
            }
            queryResult.append("</tr>");
            sql=con.createStatement();
            rs=sql.executeQuery("SELECT * FROM "+tableName);
            while(rs.next()){
               queryResult.append("<tr>");
               for(int k=1;k<=字段个数;k++) 
                   queryResult.append("<td>"+rs.getString(k)+"</td>");
               queryResult.append("</tr>");
            }
            queryResult.append("</table>");
            con.close();
      }
      catch(SQLException e){
            queryResult.append("请输入正确的用户名和密码");
      }
      return queryResult;
   }    
}