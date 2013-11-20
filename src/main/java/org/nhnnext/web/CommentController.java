package org.nhnnext.web;

import javax.servlet.http.HttpSession;

import org.nhnnext.repository.CommentRepository;
import org.nhnnext.repository.FileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommentController {
	@Autowired
	private FileRepository fileRepository;
	
	@Autowired
	private CommentRepository commentRepository;
	
	
	@RequestMapping(value="/photo/{id}/comment", method = RequestMethod.POST)
	public String comment(@PathVariable Long id, String contents, String modify, HttpSession session){
		
		Map map = fileRepository.findOne(id);
		Comment comment = new Comment(map, contents);
		commentRepository.save(comment);
		
		return "redirect:/photo/list";
	}
	
	@RequestMapping(value="/photo/{id}/comment.json", method = RequestMethod.POST)
	public @ResponseBody Comment createAndShow(@PathVariable Long id, String contents, String modify, HttpSession session){
		
		Map map = fileRepository.findOne(id);
		Comment comment = new Comment(map, contents);
		return commentRepository.save(comment);
		
	}
	
}
