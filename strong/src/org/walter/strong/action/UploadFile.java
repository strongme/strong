package org.walter.strong.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UploadFile extends ActionSupport {
	
	private File upload;
	
	private String uploadFileName;
	
	private String uploadFileType;
	
	private String savePath;

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadFileType() {
		return uploadFileType;
	}

	public void setUploadFileType(String uploadFileType) {
		this.uploadFileType = uploadFileType;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	
	@Override
	public void validate() {
		super.validate();
	}
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String realPath = ServletActionContext.getServletContext().getRealPath("/upload");
		System.out.println(realPath);
		FileOutputStream out = new FileOutputStream(new File(realPath+"/"+getUploadFileName()));
		FileInputStream in = new FileInputStream(getUpload());
		byte[] buf = new byte[1024];
		int len = 0;
		while((len=in.read(buf))>0) {
			out.write(buf);
		}
		request.setAttribute("newpic", getUploadFileName());
		return SUCCESS;
	}

}
