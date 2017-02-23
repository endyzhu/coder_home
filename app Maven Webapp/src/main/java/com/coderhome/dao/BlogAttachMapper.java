package com.coderhome.dao;

import com.coderhome.model.BlogAttach;

public interface BlogAttachMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogAttach record);

    int insertSelective(BlogAttach record);

    BlogAttach selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogAttach record);

    int updateByPrimaryKey(BlogAttach record);
}