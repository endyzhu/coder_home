package com.coderhome.dao;

import com.coderhome.model.BlogColumnContent;

public interface BlogColumnContentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogColumnContent record);

    int insertSelective(BlogColumnContent record);

    BlogColumnContent selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogColumnContent record);

    int updateByPrimaryKey(BlogColumnContent record);
}