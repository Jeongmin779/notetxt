package com.example.notetxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PersonMapper {
    List selectPersonList();
}