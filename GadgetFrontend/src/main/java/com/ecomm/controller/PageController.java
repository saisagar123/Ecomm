package com.ecomm.controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.ecomm.dao.CategoryDAO;
import com.ecomm.dao.ContactDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Contactus;
import com.ecomm.model.Product;


@Controller
public class PageController 
{
	@Autowired
	ContactDAO contactDAO;
	
	@Autowired
	ProductDAO productDAO; 
	
	@Autowired
	CategoryDAO categoryDAO; 
	
	@RequestMapping("/login")
	public String showLoginPage()
	{
		return "Login";
	}
	
	@RequestMapping("/register")
	public String showRegisterPage()
	{
		return "Register";
	}
	
	
	@RequestMapping("/homepage")
	public String showHompage()
	{
		return "Homepage";
	}
	@RequestMapping("/contactUs")
	public String contactus()
	{
		return "ContactUs";
	}
	@RequestMapping("/requests")
	public String showrequestsPage(Model m)
	{
		List<Contactus> contactList=contactDAO.listcontacts();
		m.addAttribute("contactList", contactList);
		
		return "Requests";
	}
	@RequestMapping("/deleterequest/{contactid}")
	public String deleteCategory(@PathVariable("contactid")int contactId,Model m)
	{
		Contactus contact=contactDAO.getContactid(contactId);
		
		contactDAO.deleteContact(contact);
		
		List<Contactus> contactList=(contactDAO).listcontacts();
		m.addAttribute("contactList", contactList);
		
		return "Requests";
		
	}
	@RequestMapping("/mobile")
	public String showMobilePage(Model m)
	{
		List<Product> productList=productDAO.listProductsCategoryWise(1);
		m.addAttribute("productList", productList);
		
		List<Category> categoryList=categoryDAO.listCategories();
		m.addAttribute("categoryList",this.getCategoryList(categoryList));
		
		return "Mobile";
	}
	
	public LinkedHashMap<Integer,String> getCategoryList(List<Category> categoryList)
	{
		LinkedHashMap<Integer,String> categoryList1=new LinkedHashMap<Integer,String>();
		
		for(Category category:categoryList)
		{
			categoryList1.put(category.getCategoryId(), category.getCategoryName());
		}
		return categoryList1;
	}
	
	@RequestMapping(value="/insertrequest",method=RequestMethod.POST)
	public String showContactUsPage(@RequestParam("txtName")String contName,@RequestParam("txtEmail")String contemail,@RequestParam("txtPhone")String Phone,@RequestParam("txtMsg")String mess,Model m)
	{
			Contactus contact=new Contactus();
			contact.setPhone(contName);
			contact.setEmail(contemail);
			contact.setPhnum(Phone);
			contact.setMessage(mess);
			
			contactDAO.addContactus(contact);
			
			List<Contactus> contactList=(contactDAO).listcontacts();
			m.addAttribute("contactList", contactList);

		return "ContactUs";
	}
	
}
