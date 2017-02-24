package com.coderhome.service;

import java.util.List;

import com.coderhome.model.SysUser;

public interface UserService {

	SysUser getUserByLoginname(String loginname);
	
	SysUser getUserById(int id);

	List<SysUser> getUsers();

	int insert(SysUser userInfo);
	
	int updateUserPasswd(SysUser userInfo);
}
