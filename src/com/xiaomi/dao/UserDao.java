package com.xiaomi.dao;

import com.xiaomi.entity.User;

public interface UserDao {
	void insertUser(User user);

	User findUser(String username);
}
