package com.xiaomi.biz.impl;

import com.xiaomi.biz.UserBiz;
import com.xiaomi.dao.UserDao;
import com.xiaomi.dao.impl.UserDaoImpl;
import com.xiaomi.entity.User;
import com.xiaomi.util.Md5Util;

public class UserBizImpl implements UserBiz {

	UserDao dao = new UserDaoImpl();

	@Override
	public void registerUser(User user) {
		// ����md5����
		user.setPassword(Md5Util.md5Encode(user.getPassword()));
		dao.insertUser(user);

	}

	@Override
	public User checkUser(String username, String password, int role) {
		User user = dao.findUser(username);
		String md5pwd = Md5Util.md5Encode(password);
		if (user != null) {
			if (user.getPassword().equals(md5pwd) && user.getRole() == role) {
				return user;
			}
		}
		return null;
	}

}
