package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.OrderDAO;
import com.ecomm.model.OrderDetail;

public class OrderDAOTestCase {
	static OrderDAO orderDAO;

	@BeforeClass
	public static void executeFirst() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		orderDAO = (OrderDAO) context.getBean("orderDAO");
	}

	@Test
	public void testPayment() {
		OrderDetail orderInfo = new OrderDetail();
		orderInfo.setOrderDate(new java.util.Date());
		orderInfo.setTotalShoppingAmount(77000);
		orderInfo.setUsername("fareed");
		orderInfo.setPmode("COD");

		assertTrue("Problem in Order Payment", orderDAO.payment(orderInfo));
		assertTrue("Problem in Updating Payment",
				orderDAO.updateCartItemStatus(orderInfo.getUsername(), orderInfo.getOrderId()));
	}

}
