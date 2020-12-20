package com.xiaomi.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.xiaomi.dao.BaseDao;
import com.xiaomi.dao.UserDao;
import com.xiaomi.entity.User;

public class UserDaoImpl implements UserDao {

	@Override
	public void insertUser(User user) {
		String sql = "insert into user values(null,?,?,?)";
		BaseDao.executeUpdate(sql, user.getUsername(), user.getPassword(), user.getRole());
	}

	@Override
	public User findUser(String username) {
		try {
			String sql = "select * from user where username=?";
			ResultSet rs = BaseDao.executeQuery(sql, username);
			User user = null;
			if (rs.next()) {
				user = new User();
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setRole(rs.getInt("role"));
				user.setUserid(rs.getInt("userid"));
			}
			return user;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
