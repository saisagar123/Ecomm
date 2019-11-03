package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.Contactus;

public interface ContactDAO {
	
	public boolean addContactus(Contactus contactus);
	public List<Contactus> listcontacts();
	public boolean deleteContact(Contactus contactus);
	public Contactus getContactid(int contactId);
}