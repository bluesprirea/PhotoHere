package org.nhnnext.web;

import org.nhnnext.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/join")
public class JoinController {

        @Autowired
        private ClientRepository memberRepository;
        
        @RequestMapping("/form")
        public String join(){
                return "join";
        }
        
        @RequestMapping(value="", method=RequestMethod.POST)
        public String login(User client) {                
                memberRepository.save(client);
                return "redirect:/";
        }
        
}
