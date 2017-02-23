package com.coderhome.dao;

import com.coderhome.model.WebUserFans;

public interface WebUserFansMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WebUserFans record);

    int insertSelective(WebUserFans record);

    WebUserFans selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WebUserFans record);

    int updateByPrimaryKey(WebUserFans record);
}