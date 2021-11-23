package Model.BO;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import Model.Bean.user;
import Model.DAO.UploadFileDAO;

public class UploadFileBO implements Runnable {
	HttpServletRequest request;
	user user;
	public UploadFileBO(HttpServletRequest request, user user) {
		this.request = request;
		this.user = user;
	}
	
	@Override
	public void run() {
		try {
			for (Part part : request.getParts()) {
				if(part.getName().equals("files_upload")) {
					String filename = extractFileName(part);
					filename = new File(filename).getName();
					
					try {
						part.write(getFolderUpload().getAbsolutePath() + File.separator + filename);
						UploadFileDAO.Upload(filename, user);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		} catch (Exception e) {
			request.getSession().setAttribute("message", "Có lỗi xảy ra trong quá trình upload, vui lòng thử lại sau!");
		}
		new ConvertFileBO(user).run();
	}
	private String extractFileName(Part part) {
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	      if (s.trim().startsWith("filename")) {
	        return s.substring(s.indexOf("=") + 2, s.length() - 1);
	      }
	    }
	    return "";
	  }
	
	public File getFolderUpload() {
	    File folderUpload = new File(System.getProperty("user.home") + "/pdfs");
	    if (!folderUpload.exists()) {
	      folderUpload.mkdirs();
	    }
	    return folderUpload;
	  }

}
