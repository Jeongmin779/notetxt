package com.example.notetxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.notetxt.dao.UserpageDao;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;


@Controller
public class UserpageController {

    @Autowired
    private UserpageDao userpageDao;


    @RequestMapping(value = "/index" , method = RequestMethod.GET)
    public String userPage(@RequestParam Map<String, String> map, Model model, HttpSession session) throws Exception {
        map.put("id", (String) session.getAttribute("userid"));
        model.addAttribute("popularVoka", userpageDao.popularVoka(map));
        model.addAttribute("myVoka", userpageDao.myVoka(map));
        model.addAttribute("user", session.getAttribute("user"));
        return "/user/main/index";
    }
}