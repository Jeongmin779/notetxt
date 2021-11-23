package com.example.notetxt.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

import com.example.notetxt.model.User;
import com.example.notetxt.service.LoginService;


@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;


    @RequestMapping(value = "/loginpage" , method = RequestMethod.GET)
    public String loginpage() {
        return "/login/loginpage";
    }

    @RequestMapping(value = "/loginpage" , method = RequestMethod.POST)
    public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) {
        try {
            System.out.println(map.get("id"));
            System.out.println(map.get("pwd"));
            System.out.println("hi");
            User loginUser = loginService.login(map);
            if (loginUser != null){
                session.setAttribute("user", loginUser);
            } else {
                model.addAttribute("msg", "아이디 또는 비밀번호가 올바르지 않습니다.");
                return "/login/loginpage";
            }
        } catch (Exception e){
            e.printStackTrace();
            model.addAttribute("msg", "아이디 또는 비밀번호가 올바르지 않습니다.");
            return "/login/loginpage";
        }
        return "index";
    }

    @RequestMapping(value = "/signup" , method = RequestMethod.GET)
    public String signup() {
        return "/login/signup";
    }

    @RequestMapping(value = "/signupac" , method = RequestMethod.GET)
    public String signup(@RequestParam Map<String, String> map, Model model, HttpSession session) throws Exception {
        int result = loginService.signup(map);
        if(result > 0){
            return "/login/loginpage";
        } else {
            return "/login/signup";
        }
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