
package com.lin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.lin.entity.DanweiEntity;
import com.lin.entity.FixedEntity;
import com.lin.entity.RectiNewEntity;
import com.lin.service.DanweiService;
import com.lin.service.FixedService;
import com.lin.service.RectiNewService;
@Controller
@RequestMapping("uploadFile")
public class uploadFileController
{
	private static Logger logger = Logger.getLogger(uploadFileController.class);
	@Resource(name="rectiNewService")
	private RectiNewService rectiNewService;//业务逻辑
	
	@Resource(name="danweiService")
	private DanweiService danweiService;
	
	@Resource(name="fixedService")
	private FixedService fixedService;
	
	public uploadFileController()
	{
	}
	@RequestMapping("uploadSecurityCheckFile")
	public String uploadSecurityCheckFile(MultipartFile fileObj, HttpServletRequest request) throws Exception{
		logger.info("["+this.getClass().getName()+"][uploadSecurityCheckFile][start]1");
		if (fileObj != null){
			if (fileObj.getSize() == 0) {
				return "addFileFailed";
			}
			
			logger.info("["+this.getClass().getName()+"][uploadSecurityCheckFile][SaveFile---strFile.Size]:"+fileObj.getSize());
						
			String strTruePath = "";
			
			//上传到岗位达标标准用文件夹
			strTruePath = (new StringBuilder(String.valueOf(request.getRealPath("/")))).append("security-check/").toString();
			//更新数据库
			Date date = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
			String todayyyyMMddHHmmss = df.format(date);
			String filename = todayyyyMMddHHmmss + ".pdf";
			FixedEntity entity = new FixedEntity();
			entity.setId("securitycheck");
			entity.setName(filename);
			entity.setUsed("05");
			 
			fixedService.updatePdfURL(entity);
						
			
			logger.info("["+this.getClass().getName()+"][uploadSecurityCheckFile][SaveFile---strTruePath]:"+strTruePath);
			//System.out.println((new StringBuilder("SaveFile---:")).append(strTruePath).toString());
			
			logger.info("["+this.getClass().getName()+"][uploadSecurityCheckFile][SaveFile---strFile.Name]:"+filename);
			SaveFileFromInputStream(fileObj.getInputStream(), strTruePath, filename);
			request.setAttribute("UPLOADED_FILE_NAME", filename);
		}
		
		logger.info("["+this.getClass().getName()+"][uploadSecurityCheckFile][goto][security-check/indexS3.jsp]");
		logger.info("["+this.getClass().getName()+"][uploadSecurityCheckFile][end]");
		return "security-check/indexS3";
	}
	
	@RequestMapping("uploadStandardPostFile")
	public String uploadStandardPostFile(MultipartFile fileObj, HttpServletRequest request) throws Exception{
		logger.info("["+this.getClass().getName()+"][uploadStandardPostFile][start]1");
		if (fileObj != null){
			if (fileObj.getSize() == 0) {
				return "addFileFailed";
			}
			String tmp_standardPost_beSelected_post = request.getParameter("standardPost_beSelected_post").toString();
			logger.info("["+this.getClass().getName()+"][uploadStandardPostFile][SaveFile---strFile.Size]:"+fileObj.getSize());
			logger.info("["+this.getClass().getName()+"][uploadStandardPostFile][standardPost_beSelected_post]:"+tmp_standardPost_beSelected_post);
			
			String strTruePath = "";
			
			//上传到岗位达标标准用文件夹
			strTruePath = (new StringBuilder(String.valueOf(request.getRealPath("/")))).append("standardpost/").toString();
			//更新数据库
			Date date = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
			String todayyyyMMddHHmmss = df.format(date);
			String filename = todayyyyMMddHHmmss + ".pdf";
			FixedEntity entity = new FixedEntity();
			entity.setName(filename);
			entity.setUsed("04");
			if ("配送库岗位".equals(tmp_standardPost_beSelected_post)) {
				entity.setId("peisongku");
			} else if ("市县局公司".equals(tmp_standardPost_beSelected_post)) {
				entity.setId("shixianju");
			} else if ("通用岗位".equals(tmp_standardPost_beSelected_post)) {
				entity.setId("tongyong");
			}
			 
			fixedService.updatePdfURL(entity);
						
			
			logger.info("["+this.getClass().getName()+"][uploadStandardPostFile][SaveFile---strTruePath]:"+strTruePath);
			//System.out.println((new StringBuilder("SaveFile---:")).append(strTruePath).toString());
			
			logger.info("["+this.getClass().getName()+"][uploadStandardPostFile][SaveFile---strFile.Name]:"+filename);
			SaveFileFromInputStream(fileObj.getInputStream(), strTruePath, filename);
			request.setAttribute("UPLOADED_FILE_NAME", filename);
		}
		
		logger.info("["+this.getClass().getName()+"][uploadStandardPostFile][goto][standardpost/indexS3.jsp]");
		logger.info("["+this.getClass().getName()+"][uploadStandardPostFile][end]");
		return "standardpost/indexS3";
	}
	
	@RequestMapping("uploadZuZhiTuFile")
	public String uploadZuZhiTuFile(MultipartFile fileObj, HttpServletRequest request) throws Exception{
		logger.info("["+this.getClass().getName()+"][uploadZuZhiTuFile][start]1");
		if (fileObj != null){
			if (fileObj.getSize() == 0) {
				return "addFileFailed";
			}
			
			logger.info("["+this.getClass().getName()+"][uploadZuZhiTuFile][SaveFile---strFile.Size]:"+fileObj.getSize());
			logger.info("["+this.getClass().getName()+"][uploadZuZhiTuFile][zuzhitu_beSelected_danwei]:"+request.getParameter("zuzhitu_beSelected_danwei"));
			
			String strTruePath = "";
			
			//上传到组织图用文件夹
			strTruePath = (new StringBuilder(String.valueOf(request.getRealPath("/")))).append("zuzhitu/xianju/").toString();
			//更新数据库
			Date date = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
			String todayyyyMMddHHmmss = df.format(date);
			String filename = todayyyyMMddHHmmss + ".pdf";
			DanweiEntity entity = new DanweiEntity();
			entity.setPdfurl(filename);
			entity.setOrgchartname(request.getParameter("zuzhitu_beSelected_danwei"));
			danweiService.updatePdfURL(entity);
						
			
			logger.info("["+this.getClass().getName()+"][uploadZuZhiTuFile][SaveFile---strTruePath]:"+strTruePath);
			//System.out.println((new StringBuilder("SaveFile---:")).append(strTruePath).toString());
			
			logger.info("["+this.getClass().getName()+"][uploadZuZhiTuFile][SaveFile---strFile.Name]:"+filename);
			SaveFileFromInputStream(fileObj.getInputStream(), strTruePath, filename);
			request.setAttribute("UPLOADED_FILE_NAME", filename);
		}
		
		logger.info("["+this.getClass().getName()+"][uploadZuZhiTuFile][goto][zuzhitu/shiju/indexS3.jsp]");
		logger.info("["+this.getClass().getName()+"][uploadZuZhiTuFile][end]");
		return "zuzhitu/shiju/indexS3";
	}
	
	@RequestMapping("saveuploadFile")
	public String saveuploadFile(MultipartFile fileObj, HttpServletRequest request) throws Exception{
		logger.info("["+this.getClass().getName()+"][saveuploadFile][start]");
		if (fileObj != null){
			if (fileObj.getSize() == 0) {
				return "addFileFailed";
			}
			logger.info("["+this.getClass().getName()+"][saveuploadFile][SaveFile---strFile.Name]:"+fileObj.getName());
			logger.info("["+this.getClass().getName()+"][saveuploadFile][SaveFile---strFile.Size]:"+fileObj.getSize());
			
			String strTruePath = (new StringBuilder(String.valueOf(request.getRealPath("/")))).append("upload/").append(request.getSession().getAttribute("javaid")).append("/").toString();
			logger.info("["+this.getClass().getName()+"][saveuploadFile][SaveFile---strTruePath]:"+strTruePath);
			System.out.println((new StringBuilder("SaveFile---:")).append(strTruePath).toString());
			String filename = fileObj.getOriginalFilename();
			SaveFileFromInputStream(fileObj.getInputStream(), strTruePath, filename);
		}
		logger.info("["+this.getClass().getName()+"][saveuploadFile][goto][addFileSuccess.jsp]");
		logger.info("["+this.getClass().getName()+"][saveuploadFile][end]");
		return "addFileSuccess";
	}
	
	@RequestMapping("deleteUploadFile")
	public String deleteUploadFile(String strFile, HttpServletRequest request) throws Exception {
		logger.info("["+this.getClass().getName()+"][deleteUploadFile][start]");
		
		logger.info("["+this.getClass().getName()+"][deleteUploadFile][Delete---strFile]:"+strFile);
		String strTruePath = (new StringBuilder(String.valueOf(request.getRealPath("/")))).append("upload/").append(request.getSession().getAttribute("javaid")).append("/").toString();
		logger.info("["+this.getClass().getName()+"][deleteUploadFile][Delete---strTruePath]:"+strTruePath+strFile);
		
		File file = new File((new StringBuilder(String.valueOf(strTruePath))).append(strFile).toString());
		if (file.isFile() && file.exists()) {
			file.delete();
		}
		RectiNewEntity entity = new RectiNewEntity();
		
		//表单内容设置到entity
		entity = rectiNewService.setEntityFromRequest(request, entity);
		
		logger.info("["+this.getClass().getName()+"][deleteUploadFile][javaid]:"+entity.getJavaid());

		request.setAttribute("entity",entity);
		
		logger.info("["+this.getClass().getName()+"][deleteUploadFile][goto][addFileList.jsp]");
		logger.info("["+this.getClass().getName()+"][deleteUploadFile][end]");
		return "addFileList";
	}
	
	public void SaveFileFromInputStream(InputStream stream, String path, String savefile) throws IOException{
		logger.info("["+this.getClass().getName()+"][SaveFileFromInputStream][start]");
		FileOutputStream fs = new FileOutputStream((new StringBuilder(String.valueOf(path))).append(savefile).toString());
		
		logger.info("["+this.getClass().getName()+"][SaveFileFromInputStream][path][savefile]"+path+savefile);
		byte buffer[] = new byte[0x100000];
		
		for (int byteread = 0; (byteread = stream.read(buffer)) != -1;){
			fs.write(buffer, 0, byteread);
			fs.flush();
		}

		fs.close();
		stream.close();
		logger.info("["+this.getClass().getName()+"][SaveFileFromInputStream][end]");
	}
	@RequestMapping("addFileList")
	public String addFileList(HttpServletRequest request) throws Exception{
		logger.info("["+this.getClass().getName()+"][addFileList][start]");
		
		
		RectiNewEntity entity = new RectiNewEntity();
		
		//表单内容设置到entity
		entity = rectiNewService.setEntityFromRequest(request, entity);
		
		logger.info("["+this.getClass().getName()+"][addFileList][javaid]:"+entity.getJavaid());

		request.setAttribute("entity",entity);
		
		logger.info("["+this.getClass().getName()+"][addFileList][goto][addFileList.jsp]");
		logger.info("["+this.getClass().getName()+"][addFileList][end]");
		return "addFileList";
	}
	@RequestMapping("addFileListReadOnly")
	public String addFileListReadOnly(HttpServletRequest request,String javaid) throws Exception{
		logger.info("["+this.getClass().getName()+"][addFileListReadOnly][start]");

		logger.info("["+this.getClass().getName()+"][addFileListReadOnly][javaid]:"+javaid);

		request.setAttribute("javaid",javaid);
		
		logger.info("["+this.getClass().getName()+"][addFileListReadOnly][goto][addFileListReadOnly.jsp]");
		logger.info("["+this.getClass().getName()+"][addFileListReadOnly][end]");
		return "addFileListReadOnly";
	}
	
}
