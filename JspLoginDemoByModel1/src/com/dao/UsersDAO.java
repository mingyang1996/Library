package com.dao;

import com.po.Users;

//�û���ҵ���߼��࣬
public class UsersDAO {
		//�û���¼����
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
