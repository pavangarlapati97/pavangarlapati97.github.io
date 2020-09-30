package connect;
import java.sql.Connection;
import java.sql.DriverManager;

public class OanConnectionBean
{
	private Connection con;
	public OanConnectionBean()
	{
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
	}catch(Exception e){e.printStackTrace();}
	}
	public Connection getConnection()
	{
		return con;
	}
}
