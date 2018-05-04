package Servlet;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.FileUDService;

@Controller
@RequestMapping("/download")
public class FileDownload {
	FileUDService fuds = new FileUDService();
	@RequestMapping("{id}/{filename}/{type}")
	public ResponseEntity<byte[]> download(@PathVariable String id,@PathVariable String filename,@PathVariable String type) throws IOException{
		int i=0;
		if(filename!=null){
			filename=URLDecoder.decode(filename, "utf-8");
		}
		System.out.println(filename);
		Map<String,Object> map = fuds.queryFile(id, type);
		
		String paths=(String) map.get("savepath");
		String[] pathArray = paths.split(",");
		//�ļ���ʵ��
		String filerealname = (String) map.get("realfilename");
		String[] files = filerealname.split(",");
		for (String string : files) {
			if(string.equals(filename)){
				System.out.println("���ݿ�ȡ:"+string);
				i++;
				break;
			}
			i++;
		}
		//�ļ�����·��
		String path =  pathArray[i-1];
		System.out.println("����·��:"+path);
		//�����ļ����ڴ�
		File file = new File(path);
		//����ͷ��Ϣ
		HttpHeaders headers = new HttpHeaders();
		//�������������������
		String fileName = new String(filename.getBytes("GB2312"),"ISO8859-1");
		//��������ʱ���ļ���
		headers.setContentDispositionFormData("attachment", fileName);
		//ת����Ϊ��������
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		//���������ļ�ʵ��
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.CREATED);
	}

}
