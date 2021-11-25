package com.example.notetxt.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

import com.example.notetxt.model.User;
import com.example.notetxt.dao.LoginDao;


@Controller
public class LoginController {

    @Autowired
    private LoginDao loginDao;



    @RequestMapping(value = "/loginpage" , method = RequestMethod.GET)
    public String loginpage(@RequestParam Map<String, String> map, Model model, HttpSession session) {
        System.out.println("123");
        return "/user/login/loginPage";
    }

    @RequestMapping(value = "/loginpage" , method = RequestMethod.POST)
    public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) throws Exception {
        String s_url = "";
        try {
            User user = loginDao.login(map);
            if (user != null) {
                model.addAttribute("user", user);
                model.addAttribute("msg", "로그인에 성공하셨습니다.");
                session.setAttribute("user", user);
                session.setAttribute("userid", user.getId());
                s_url = "index";
            } else {
                model.addAttribute("msg", "아이디 또는 비밀번호가 올바르지 않습니다.");
                s_url = "loginpage";
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "로그인 중 문제가 발생했습니다.");
            s_url = "loginpage";
        }
        model.addAttribute("url", s_url);
        return "alertPage";
    } // end of PostMapping("login")

    @RequestMapping(value = "/signup" , method = RequestMethod.GET)
    public String signup() {
        return "/login/signup";
    }

    @RequestMapping(value = "/signupac" , method = RequestMethod.GET)
    public String signup(@RequestParam Map<String, String> map, Model model, HttpSession session) throws Exception {
        int result = loginDao.signup(map);
        if(result > 0){
            return "/user/login/loginPage";
        } else {
            return "/user/login/signup";
        }
    }

    @RequestMapping(value = "/find_id" , method = RequestMethod.GET)
    public String find_id() {
        return "/user/login/find_id";
    }

    @RequestMapping(value = "/find_pw" , method = RequestMethod.GET)
    public String find_pw() {
        return "/user/login/find_pw";
    }

}