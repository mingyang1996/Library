 import java.sql.*;
  public class JDBCTest {
  public static void main(String[] args){
 
               String driver = "com.mysql.jdbc.Driver";
               String url = "jdbc:mysql://127.0.0.1:3306/test";
               String user = "root";
               String password = "785210";
      try{
 
           Class.forName(driver);
           Connection conn = DriverManager.getConnection(url, user, password);  //��������(Connection)
           if(!conn.isClosed())
                        System.out.println("Succeeded connecting to the Database!");
           Statement statement = conn.createStatement();      //�������������ݿⷢ��SQL��Statement���󣬲�����sql
           String sql = "select * from tdb_goods";

 
             ResultSet rs = statement.executeQuery(sql);  
System.out.println("-----------------");  
System.out.println("ִ�н��������ʾ:");  
System.out.println("-----------------");  
System.out.println("��Ʒ��" + "\t" + "��Ʒ����");  
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