package com.coderhome.dao;

import com.coderhome.model.WebMenu;

public interface WebMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WebMenu record);

    int insertSelective(WebMenu record);

    WebMenu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WebMenu record);

    int updateByPrimaryKey(WebMenu record);
}