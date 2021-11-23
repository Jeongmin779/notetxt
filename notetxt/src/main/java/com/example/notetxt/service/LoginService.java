package com.example.notetxt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.notetxt.mapper.PersonMapper;

@Service
public class LoginService {

    @Autowired
    PersonMapper personMapper;

    public List selectPersonList(){
        return personMapper.selectPersonList();
    }

}