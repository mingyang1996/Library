package com.dao;

import com.po.Users;

//用户的业务逻辑类，
public class UsersDAO {
		//用户登录方法
	public boolean usersLogin(Users u)
	{
		if("Group7".equals(u.getUsername())&&"Group7".equals(u.getPassword()))
		{
			return true;
		}
		else
			return false;
	}
	
	
}
