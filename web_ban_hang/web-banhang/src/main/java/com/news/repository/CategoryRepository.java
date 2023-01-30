package com.news.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.news.entity.Category;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
	List<Category> findTop5ByOrderByIdDesc();
	List<Category> findTop2ByOrderByIdDesc();
}
