package com.coderhome.dao;

import com.coderhome.model.WebUserLog;

public interface WebUserLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WebUserLog record);

    int insertSelective(WebUserLog record);

    WebUserLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WebUserLog record);

    int updateByPrimaryKeyWithBLOBs(WebUserLog record);

    int updateByPrimaryKey(WebUserLog record);
}