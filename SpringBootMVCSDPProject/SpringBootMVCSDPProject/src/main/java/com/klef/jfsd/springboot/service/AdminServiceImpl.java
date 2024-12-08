package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public List<Customer> viewAllCustomers()
	{
		return customerRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String username, String password) 
	{
		return adminRepository.checkAdminLogin(username, password);
	}

	@Override
	public long customercount() {
		return customerRepository.count();
	}

	@Override
	public String deleteCustomer(int id) {
		customerRepository.deleteById(id);
		return "Customer Deleted Successfully";
	}

	@Override
	public Customer displayCustomerById(int id) {
		return customerRepository.findById(id).get();
	}

	@Override
	public String addProduct(Product product) {
		productRepository.save(product);
		return "Product Added succesfully";
	}

	@Override
	public List<Product> viewAllProducts() {
		return productRepository.findAll();
	}

	@Override
	public Product displayProductById(int pid) {
		return productRepository.findById(pid).get();
	}

}
