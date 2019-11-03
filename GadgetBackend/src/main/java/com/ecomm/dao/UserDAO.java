package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.UserDetail;

public interface UserDAO {
	public boolean addUserDetail(UserDetail userdetail);
	public boolean deleteUserDetail(UserDetail userdetail);
	public boolean updateUserDetail(UserDetail userdetail);
	public List<UserDetail> listUserDetails();
	public UserDetail getUserDetail(String username);
	public boolean registerUser(UserDetail userdetail);
}
