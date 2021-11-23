package com.example.notetxt.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.notetxt.model.User;

@Service("userService")
public class UserService {

    @Autowired
    private SqlSession session;

    public User login(Map<String, String> map) throws Exception {
        return session.selectOne("mapper.UserMapper.login", map);
    }

}