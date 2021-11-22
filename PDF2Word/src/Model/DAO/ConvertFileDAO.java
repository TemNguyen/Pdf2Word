package Model.DAO;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import Model.Bean.uploadfile;
import Model.Bean.user;

public class ConvertFileDAO {

	public static ArrayList<uploadfile> GetListConvertFile(user user) {
		ArrayList<uploadfile> files = new ArrayList<uploadfile>();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://127.0.0.1:3306/pdf2word";
			Connection con = (Connection) DriverManager.getConnection(url, "root", "");
			Statement stmt = (Statement) con.createStatement();
			String sql = "select * from uploadfile where uid = "+ user.getUid() + " and fstatus = false";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int fid = rs.getInt("fid");
				int uid = rs.getInt("uid");
				String fname = rs.getString("fname");
				boolean fstatus = rs.getBoolean("fstatus");
				
				files.add(new uploadfile(fid, uid, fname, fstatus));
			}
		}
		catch(Exception a)
		{
			return null;
		}
		
		return files;
	}

	public static void ChangeStatus(int fid) {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://127.0.0.1:3306/pdf2word";
			Connection con = (Connection) DriverManager.getConnection(url, "root", "");
			Statement stmt = (Statement) con.createStatement();
			String sql = "UPDATE uploadfile set fstatus = true where fid = " + fid;
			
			stmt.execute(sql);
			
		}
		catch(Exception a)
		{

		}
	}

}
