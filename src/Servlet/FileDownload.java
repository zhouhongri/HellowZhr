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
		//文件真实名
		String filerealname = (String) map.get("realfilename");
		String[] files = filerealname.split(",");
		for (String string : files) {
			if(string.equals(filename)){
				System.out.println("数据库取:"+string);
				i++;
				break;
			}
			i++;
		}
		//文件下载路径
		String path =  pathArray[i-1];
		System.out.println("下载路径:"+path);
		//加载文件到内存
		File file = new File(path);
		//创建头信息
		HttpHeaders headers = new HttpHeaders();
		//解决中文名称乱码问题
		String fileName = new String(filename.getBytes("GB2312"),"ISO8859-1");
		//构建下载时的文件名
		headers.setContentDispositionFormData("attachment", fileName);
		//转换成为二进制流
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		//返回下载文件实体
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.CREATED);
	}

}
