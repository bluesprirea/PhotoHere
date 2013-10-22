package org.nhnnext.web;

import javax.servlet.http.HttpSession;

import org.nhnnext.repository.CommentRepository;
import org.nhnnext.repository.FileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class CommentController {
	@Autowired
	private FileRepository fileRepository;
	
	@Autowired
	private CommentRepository commentRepository;
	
	
	@RequestMapping(value="/{id}/comment_ok", method = RequestMethod.POST)
	public String comment_write(@PathVariable Long id, String contents, String modify, HttpSession session){
		
		Map map = fileRepository.findOne(id);
		Comment comment = new Comment(map, contents);
		commentRepository.save(comment);
		return "redirect:/board/" + id;
	}
	
}
