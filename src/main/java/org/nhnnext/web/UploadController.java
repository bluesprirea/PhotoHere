package org.nhnnext.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UploadController {
	@RequestMapping("/photo/upload")
	public String form(){
		return "upload";
	}
	
	@RequestMapping(value = "/photo", method=RequestMethod.POST)
	public String create(String firstname, String textarea){
		System.out.println("firstname : " + firstname + "textarea : " + textarea);
		return "redirect:/";
	}
	
}
