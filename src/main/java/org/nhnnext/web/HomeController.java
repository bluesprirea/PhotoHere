package org.nhnnext.web;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.nhnnext.repository.CommentRepository;
import org.nhnnext.repository.FileRepository;
import org.nhnnext.support.FileUploader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/photo")
public class HomeController {
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private FileRepository fileRepository;

	@Autowired
	private CommentRepository commentRepository;

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/upload")
	public String upload(HttpSession session) {
		if (session.getAttribute("userId") != null) {

			return "upload";
		}
		return "redirect:/";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String uploaded(Map map, MultipartFile file) {
		log.debug("photo : {}", map);
		String fileName = FileUploader.upload(file);
		map.setFilename(fileName);

		Map certainMap = fileRepository.save(map);

		System.out.println("board: " + map);

		return "redirect:/photo/" + certainMap.getId();
	}

	@RequestMapping(value = "/Correct/{id}")
	public String modify(@PathVariable Long id, Model model) {
		Map map = fileRepository.findOne(id);
		model.addAttribute("mapmap", map);
		return "Correct";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String check(@PathVariable Long id, Model model) {
		Map mapmap = fileRepository.findOne(id);
		model.addAttribute("mapmap", mapmap);

		return "Check";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable Long id) {
		Iterable iter = commentRepository.findAll();
		Iterator it = iter.iterator();

		while (it.hasNext()) {
			Comment attcom = (Comment) it.next();
			Long boardNum = attcom.getMap().getId();

			if (boardNum.equals(id)) {
				commentRepository.delete(attcom.getId());
				;
			}
		}

		fileRepository.delete(id);
		return "redirect:/photo";
	}
	

    @RequestMapping(value = "/list")
    public String list(Model model) {
    		Iterable<Map> boardList;
    		boardList = fileRepository.findAll();
    		
//    		List<Map> copy = (List<Map>)fileRepository.findAll();
            model.addAttribute("mapmap", boardList);

            return "list";
    }
    
   
}
