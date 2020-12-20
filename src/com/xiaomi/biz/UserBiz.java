package com.xiaomi.biz;

import com.xiaomi.entity.User;

public interface UserBiz {
	void registerUser(User user);

	User checkUser(String username, String password, int role);
}
