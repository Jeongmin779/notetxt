package com.example.notetxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {

    @RequestMapping(value = "/" , method=RequestMethod.GET)
    public String main() {
        // jsp 페이지 호출
        return "main";
    }

    @RequestMapping(value = "/index" , method = RequestMethod.GET)
    public String index() {
        return "index";
    }
}