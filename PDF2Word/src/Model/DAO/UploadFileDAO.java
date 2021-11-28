package Model.DAO;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import Model.Bean.user;

public class UploadFileDAO {

	public static void Upload(String filename, user user, int fstatus) {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://127.0.0.1:3306/pdf2word";
			Connection con = (Connection) DriverManager.getConnection(url, "root", "");
			Statement stmt = (Statement) con.createStatement();
			String sql = "INSERT INTO `uploadfile`(`uid`, `fname`, `fstatus`) VALUES (" + user.getUid() + ",'" + filename + "'," + fstatus + ")";
			
			stmt.execute(sql);
		}
		catch(Exception a)
		{

		}
	}

}
