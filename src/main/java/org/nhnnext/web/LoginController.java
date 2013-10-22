package org.nhnnext.web;

import javax.servlet.http.HttpSession;

import org.nhnnext.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {

        @Autowired
        private ClientRepository clientRepository;

        @RequestMapping("/form")
        public String form() {
                return "login";
        }

        @RequestMapping(value = "/logout")
        public String logout(HttpSession session){
                session.removeAttribute("userId");
                return "redirect:/";
                
        }
        
        @RequestMapping(value = "", method = RequestMethod.POST)
        public String login(User mem, HttpSession session) {
                String userId = mem.getUserid();
                User userInfo = clientRepository.findOne(userId);

               
                if (mem.getPassword().equals(userInfo.getPassword())) {
                        session.setAttribute("userId", userId);
                        return "redirect:/";
                }

                else {
                        return "fail";
                }
        }

}