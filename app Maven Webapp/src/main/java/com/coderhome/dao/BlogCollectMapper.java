package com.coderhome.dao;

import com.coderhome.model.BlogCollect;

public interface BlogCollectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogCollect record);

    int insertSelective(BlogCollect record);

    BlogCollect selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogCollect record);

    int updateByPrimaryKey(BlogCollect record);
}