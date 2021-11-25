package com.example.notetxt.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.notetxt.model.User;

@Repository
public class UserDao {

    @Autowired
    private SqlSession session;

    public User login(Map<String, String> map) throws Exception {
        return session.selectOne("mapper.UserMapper.login", map);
    }


}