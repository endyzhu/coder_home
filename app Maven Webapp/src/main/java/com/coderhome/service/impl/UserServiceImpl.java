package com.coderhome.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderhome.dao.SysUserMapper;
import com.coderhome.model.SysUser;
import com.coderhome.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private SysUserMapper sysUserMapper;

	@Override
	public SysUser getUserById(int id) {

		return sysUserMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<SysUser> getUsers() {
		return null;
	}

	@Override
	public int insert(SysUser userInfo) {
		int result = sysUserMapper.insert(userInfo);
		return result;
	}

	@Override
	public SysUser getUserByLoginname(String loginname) {
		SysUser user = sysUserMapper.selectByLoginname(loginname);
		return user;
	}

	@Override
	public int updateUserPasswd(SysUser userInfo) {
		int i = sysUserMapper.updateByPrimaryKeySelective(userInfo);
		return i;
	}

}
