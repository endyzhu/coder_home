package com.coderhome.dao;

import com.coderhome.model.SysLog;

public interface SysLogMapper {
    int insert(SysLog record);

    int insertSelective(SysLog record);
}