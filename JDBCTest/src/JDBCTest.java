 import java.sql.*;
  public class JDBCTest {
  public static void main(String[] args){
 
               String driver = "com.mysql.jdbc.Driver";
               String url = "jdbc:mysql://127.0.0.1:3306/test";
               String user = "root";
               String password = "785210";
      try{
 
           Class.forName(driver);
           Connection conn = DriverManager.getConnection(url, user, password);  //建立连接(Connection)
           if(!conn.isClosed())
                        System.out.println("Succeeded connecting to the Database!");
           Statement statement = conn.createStatement();      //创建用于向数据库发送SQL的Statement对象，并发送sql
           String sql = "select * from tdb_goods";

 
             ResultSet rs = statement.executeQuery(sql);  
System.out.println("-----------------");  
System.out.println("执行结果如下所示:");  
System.out.println("-----------------");  
System.out.println("产品号" + "\t" + "产品名称");  
System.out.println("-----------------");  
String name = null;  
while(rs.next()) {  

name = rs.getString("goods_name");
name = new String(name.getBytes("ISO-8859-1"),"GB2312");



	System.out.println(rs.getString("goods_id") + "\t" + name);  
	}  
	rs.close();  
			conn.close();
		} catch (ClassNotFoundException e) {   
	System.out.println("Sorry,can`t find the Driver!");   
	e.printStackTrace();   
	} catch(SQLException e) {   
	e.printStackTrace();   
	} catch(Exception e) {   
	e.printStackTrace();   
	}   
	}   
	}  