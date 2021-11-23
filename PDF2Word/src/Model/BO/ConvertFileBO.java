package Model.BO;

import Model.Bean.user;

import java.io.File;
import java.util.ArrayList;

import com.spire.pdf.FileFormat;
import com.spire.pdf.PdfDocument;

import Model.Bean.uploadfile;
import Model.DAO.ConvertFileDAO;

public class ConvertFileBO implements Runnable {
	user user;
	
	public ConvertFileBO(user user) {
		this.user = user;
	}
	@Override
	public void run() {
		ArrayList<uploadfile> files = ConvertFileDAO.GetListConvertFile(user);
		for (uploadfile file : files) {
			String filename = file.getFname().split("\\.")[0];
			try {
				Convert(filename);
				ConvertFileDAO.ChangeStatus(file.getFid());
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
	}
	
	private void Convert(String filename) {
		PdfDocument pdf = new PdfDocument();
		try {
			pdf.loadFromFile(GetFolderPath("pdfs").getAbsolutePath() + File.separator + filename + ".pdf");
			pdf.saveToFile(GetFolderPath("docxs").getAbsolutePath() + File.separator + filename + ".docx", FileFormat.DOCX);
		} catch (Exception e) {
			e.printStackTrace();
		}
		pdf.close();
	}
	
	private File GetFolderPath(String folder) {
	    File folderUpload = new File(System.getProperty("user.home") + "/" + folder);
	    if (!folderUpload.exists()) {
	      folderUpload.mkdirs();
	    }
	    return folderUpload;
	  }
}
