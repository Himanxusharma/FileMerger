package fileMerger.controller;


import java.io.*;
import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping(path = "/uploadfile", method = RequestMethod.POST)
	public String fileupload(@RequestParam("file1") MultipartFile file1,
			@RequestParam("file2") MultipartFile file2, Model model) throws IOException {

		System.out.println("File1 upload page");
		System.out.println(file1.getOriginalFilename());
		System.out.println(file1.getSize());

		System.out.println("File2 upload page");
		System.out.println(file2.getOriginalFilename());
		System.out.println(file2.getSize());

		// Assuming the user provides the merge column index (0-based) as mergeColumnIndex
		int mergeColumnIndex = 0;
		
		InputStream inputFile1 = file1.getInputStream();
		InputStream inputFile2 = file2.getInputStream();
		
	    

	    Map<String, String> mergedDataMap = new HashMap<>();

	    try (BufferedReader reader1 = new BufferedReader(new InputStreamReader(inputFile1));
	         BufferedReader reader2 = new BufferedReader(new InputStreamReader(inputFile2))) {
	    	
//	    	// Read the header lines
//		    String header1 = reader1.readLine()+";"+reader2.readLine(); // I have to remove the same column name
//		    mergedDataMap.put("column",header1);
	    	
	        // Skip header lines
	        reader1.readLine();
	        reader2.readLine();
	        
	        // read the first CSV file and store the data in a HashMap
	        String line1, line2;
	        while ((line1 = reader1.readLine()) != null) {
	            String[] fields1 = line1.split(";");
	            if (mergeColumnIndex >= 0 && mergeColumnIndex < fields1.length) {
	                String key = fields1[mergeColumnIndex];
	                if (fields1.length > mergeColumnIndex + 1) {
	                    String value = line1.substring(line1.indexOf(';') + 1);
	                    mergedDataMap.put(key, value);
	                }
	            }
	        }

	        // read the second CSV file, merge the data, and store in a HashMap
	        while ((line2 = reader2.readLine()) != null) {
	            String[] fields2 = line2.split(";");
	            if (mergeColumnIndex >= 0 && mergeColumnIndex < fields2.length) {
	                String key = fields2[mergeColumnIndex];
	                String value = mergedDataMap.get(key);
	                if (value != null && fields2.length > mergeColumnIndex + 1) {
	                    String mergedLine = key + ";" + value + ";" + line2.substring(line2.indexOf(';') + 1);
	                    mergedDataMap.put(key, mergedLine);
	                }
	            }
	        }

	    } catch (IOException e) {
	        e.printStackTrace();
	    }

		      // Print the merged data stored in the HashMap
     System.out.println("Merged file below : ");
     for (Map.Entry<String, String> entry : mergedDataMap.entrySet()) {
         System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
     }
		
        
        // Add the HashMap as an attribute to the model
        model.addAttribute("mergedDataMap", mergedDataMap);
        
		return "filesuccess";

}}
