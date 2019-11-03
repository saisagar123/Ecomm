package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest {

	static UserDAO userDAO;

	@BeforeClass
	public static void executeFirst() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		userDAO = (UserDAO) context.getBean("userDAO");
	}

	@Test
	public void registerUserTest() {
		UserDetail user = new UserDetail();

		user.setUsername("vinod");
		user.setCustomerName("Vinod K");
		user.setAddress("Saket,Delhi");
		user.setEmailId("vinod@gmail.com");
		user.setEnabled(true);
		user.setMobileNo("9957898811");
		user.setPassword("12345");
		user.setRole("ROLE_ADMIN");

		assertTrue("Problem in Registering User:", userDAO.registerUser(user));
	}

}
