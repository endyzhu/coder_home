package com.coderhome.dao;

import com.coderhome.model.BlogContentTab;

public interface BlogContentTabMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogContentTab record);

    int insertSelective(BlogContentTab record);

    BlogContentTab selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogContentTab record);

    int updateByPrimaryKey(BlogContentTab record);
}