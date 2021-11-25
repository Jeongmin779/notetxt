package com.example.notetxt.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.notetxt.model.User;
import org.springframework.stereotype.Service;

@Repository
public class LoginDao {

    @Autowired
    private SqlSession session;

    public User login(Map<String, String> map) throws Exception {
        return session.selectOne("mapper.LoginMapper.login", map);
    }

    public int signup(Map<String, String> map) throws Exception {
        int result = session.insert("mapper.LoginMapper.signup", map);
        return result;
    }

}