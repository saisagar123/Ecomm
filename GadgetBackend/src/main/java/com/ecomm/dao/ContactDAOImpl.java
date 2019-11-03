package com.ecomm.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Contactus;
import com.ecomm.model.Product;

@Repository("ContactDAO")
@Transactional

public class ContactDAOImpl implements ContactDAO
{
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean addContactus(Contactus contactus)
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(contactus);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}
	
	public List<Contactus> listcontacts()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Contactus");
		List<Contactus> ContactList=query.list();
		session.close();
		return ContactList;	
	}
	
	
	public boolean deleteContact(Contactus contactus) 
	{
		try
		{
			sessionFactory.getCurrentSession().delete(contactus);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}
	public Contactus getContactid(int contactId)
	{
		Session session=sessionFactory.openSession();
		Contactus contact=session.get(Contactus.class,contactId);
		session.close();
		return contact;
	}
	
}