package fileMerger.controller;


import java.io.*;
import java.util.*;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping(path = "/uploadfile", method = RequestMethod.POST)
	public String fileupload(@RequestParam("file1") CommonsMultipartFile file1,
			@RequestParam("file2") CommonsMultipartFile file2) {

		System.out.println("File1 upload page");
		System.out.println(file1.getOriginalFilename());
		System.out.println(file1.getSize());

		System.out.println("File2 upload page");
		System.out.println(file2.getOriginalFilename());
		System.out.println(file2.getSize());

		try {
			InputStream inputFile1 = file1.getInputStream();
			InputStream inputFile2 = file2.getInputStream();

			// Create a BufferedReader object to read the CSV file
			BufferedReader reader1 = new BufferedReader(new InputStreamReader(inputFile1));
			BufferedReader reader2 = new BufferedReader(new InputStreamReader(inputFile2));

			
			

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "filesuccess";

	}
}
