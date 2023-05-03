package fileMerger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping(path="/uploadfile",method= RequestMethod.POST)
	public String fileupload(@RequestParam("filename") CommonsMultipartFile file ) {
		
		System.out.println("File upload page");
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		return "filesuccess";
		
	}
}
