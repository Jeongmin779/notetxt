package com.example.notetxt.dao;

import java.util.List;
import java.util.Map;

import com.example.notetxt.model.Voka;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.notetxt.model.User;

@Repository
public class UserpageDao {

    @Autowired
    private SqlSession session;

    public User login(Map<String, String> map) throws Exception {
        return session.selectOne("mapper.UserMapper.login", map);
    }

    public List<Voka> popularVoka(Map<String, String> map) throws Exception {
        return session.selectList("mapper.MainMapper.popularVoka", map);
    }

    public List<Voka> myVoka(Map<String, String> map) throws Exception {
        return session.selectList("mapper.MainMapper.myVoka", map);
    }

}