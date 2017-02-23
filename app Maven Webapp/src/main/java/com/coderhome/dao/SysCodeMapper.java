package com.coderhome.dao;

import com.coderhome.model.SysCode;

public interface SysCodeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysCode record);

    int insertSelective(SysCode record);

    SysCode selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysCode record);

    int updateByPrimaryKey(SysCode record);
}