package Model.Bean;

public class uploadfile {
	int fid;
	int uid;
	String fname;
	boolean fstatus;
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public boolean isFstatus() {
		return fstatus;
	}
	public void setFstatus(boolean fstatus) {
		this.fstatus = fstatus;
	}
	public uploadfile(int fid, int uid, String fname, boolean fstatus) {
		super();
		this.fid = fid;
		this.uid = uid;
		this.fname = fname;
		this.fstatus = fstatus;
	}
	public uploadfile() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
