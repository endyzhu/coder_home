package com.coderhome.dao;

import com.coderhome.model.BlogColumn;

public interface BlogColumnMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogColumn record);

    int insertSelective(BlogColumn record);

    BlogColumn selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogColumn record);

    int updateByPrimaryKey(BlogColumn record);
}