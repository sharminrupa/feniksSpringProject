package com.javahub.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javahub.springboot.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

}
