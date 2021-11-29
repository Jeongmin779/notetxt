package com.example.notetxt.controller;

import com.example.notetxt.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.notetxt.dao.UserpageDao;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;
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

    @RequestMapping(value = "/user/myPage", method = RequestMethod.GET)
    public String userMypage(@RequestParam Map<String, String> map, Model model, HttpSession session) throws Exception {
        map.put("userid", (String) session.getAttribute("userid"));
        model.addAttribute("userInfo", userpageDao.userInfo(map));
        return "/user/myPage/myPage";
    }

    @RequestMapping(value = "/user/userInfoUpdate", method = RequestMethod.POST)
    public String userInfoUpdate(@RequestParam Map<String, String> map, Model model, HttpSession session) throws Exception {
        map.put("userid", (String) session.getAttribute("userid"));
        userpageDao.userInfoUpdate(map);
        model.addAttribute("url", "/user/myPage");
        model.addAttribute("msg", "정보가 업데이트 되었습니다!");
        return "/alertPage";
    }
}