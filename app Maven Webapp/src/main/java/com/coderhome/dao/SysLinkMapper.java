package com.coderhome.dao;

import com.coderhome.model.SysLink;

public interface SysLinkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysLink record);

    int insertSelective(SysLink record);

    SysLink selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysLink record);

    int updateByPrimaryKey(SysLink record);
}