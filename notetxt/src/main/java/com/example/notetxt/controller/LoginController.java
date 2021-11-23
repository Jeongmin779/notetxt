package com.example.notetxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.notetxt.service.PersonService;

@Controller
public class LoginController {

    @Autowired
    PersonService personService;

    @RequestMapping(value = "/loginpage" , method = RequestMethod.GET)
    public String loginpage() {
        return "/login/loginpage";
    }

    @RequestMapping(value = "/signup" , method = RequestMethod.GET)
    public String signup() {
        return "/login/signup";
    }

    @RequestMapping(value = "/find_id" , method = RequestMethod.GET)
    public String find_id() {
        return "/login/find_id";
    }

    @RequestMapping(value = "/find_pw" , method = RequestMethod.GET)
    public String find_pw() {
        return "/login/find_pw";
    }

}