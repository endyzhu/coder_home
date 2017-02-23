package com.coderhome.dao;

import com.coderhome.model.BlogContent;

public interface BlogContentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogContent record);

    int insertSelective(BlogContent record);

    BlogContent selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogContent record);

    int updateByPrimaryKeyWithBLOBs(BlogContent record);

    int updateByPrimaryKey(BlogContent record);
}