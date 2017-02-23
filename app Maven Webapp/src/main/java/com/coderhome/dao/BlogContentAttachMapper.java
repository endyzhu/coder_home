package com.coderhome.dao;

import com.coderhome.model.BlogContentAttach;

public interface BlogContentAttachMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogContentAttach record);

    int insertSelective(BlogContentAttach record);

    BlogContentAttach selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogContentAttach record);

    int updateByPrimaryKey(BlogContentAttach record);
}