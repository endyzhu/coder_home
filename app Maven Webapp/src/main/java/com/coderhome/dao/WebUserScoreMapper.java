package com.coderhome.dao;

import com.coderhome.model.WebUserScore;

public interface WebUserScoreMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WebUserScore record);

    int insertSelective(WebUserScore record);

    WebUserScore selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WebUserScore record);

    int updateByPrimaryKey(WebUserScore record);
}