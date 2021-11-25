package com.example.notetxt.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.notetxt.model.User;
import com.example.notetxt.dao.UserDao;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserDao userDao;

    @GetMapping(value = "/login")
    public String login() {
        return "/good/index";
    }

    @GetMapping(value = "/test")
    public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) {
        try {
            if (map.get("userid") == null || map.get("userpwd") == null) {
                model.addAttribute("msg", "아이디 또는 비밀번호를 입력해주세요");
                return "/good/index";
            }
            User user = userDao.login(map);
            if (user != null) {
                session.setAttribute("user", user);
                session.setAttribute("userid", user.getId());
                model.addAttribute("user", session.getAttribute("user"));
            } else {
                model.addAttribute("msg", "아이디 또는 비밀번호가 올바르지 않습니다.");
                return "/good/index";
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "로그인 중 문제가 발생했습니다.");
            return "/good/index";
        }
        return "/good/index";
    } // end of PostMapping("login")
}