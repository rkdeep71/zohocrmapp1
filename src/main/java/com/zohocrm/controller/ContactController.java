package com.zohocrm.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.services.ContactService;

@Controller
public class ContactController {
		
	
	private ContactService contactService;
	
	public ContactController(ContactService contactService) {
		this.contactService = contactService;
	}



	@RequestMapping("/listallcontacts")
	public String listAllLeads(Model model) {
		List<Contact> contacts = contactService.getAllContacts();
		model.addAttribute("contacts", contacts);
		return "list_contacts";
	}
	
	
	@RequestMapping("/contactInfo")
	public String contactInfo(@RequestParam("id") long id,Model model) {
		Contact contact = contactService.getContactById(id);
		model.addAttribute("contact", contact);
		return "contact_info";
	}
	
	@RequestMapping("/updateContact")
	public String updateContact(@RequestParam("id") long id, Model model) {
		Contact contact = contactService.getContactById(id);
		model.addAttribute("contact", contact);
		return "update_contacts";
	}
	
	@RequestMapping("/updateOneContact")
	public String updateOneContact(@ModelAttribute("contact") Contact contact, Model model) {
		contactService.saveContact(contact);
		List<Contact> contacts = contactService.getAllContacts();
		model.addAttribute("contacts", contacts);
		return "list_contacts";
	}
	
	@RequestMapping("/deleteContact")
	public String deleteContact(@RequestParam("id") long id, Model model) {
		contactService.deleteContactById(id);
		List<Contact> contacts = contactService.getAllContacts();
		model.addAttribute("contacts", contacts);
		return "list_contacts";
	}
	
}
