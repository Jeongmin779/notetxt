package com.example.notetxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.notetxt.service.PersonService;

@Controller
public class HelloController {

    @Autowired
    PersonService personService;

    @RequestMapping(value = "/" , method=RequestMethod.GET)
    public String Hello() {
        // jsp 페이지 호출
        return "main";
    }

    @RequestMapping(value = "/hello" , method=RequestMethod.GET)
    public String Hello(Model model) {
        // Spring 에서 제공하는 Model 객체를 사용하여 뷰페이지에 데이터를 넘겨준다.
        model.addAttribute("name" , "TEST");
        System.out.println(personService.selectPersonList().size());
        model.addAttribute("result" , personService.selectPersonList());
        // jsp 페이지 호출
        return "hello";
    }
}