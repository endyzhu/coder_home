package com.coderhome.dao;

import com.coderhome.model.BlogContentKeyword;

public interface BlogContentKeywordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogContentKeyword record);

    int insertSelective(BlogContentKeyword record);

    BlogContentKeyword selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogContentKeyword record);

    int updateByPrimaryKey(BlogContentKeyword record);
}