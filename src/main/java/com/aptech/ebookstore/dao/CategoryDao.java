package com.aptech.ebookstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.aptech.ebookstore.model.Category;
import com.aptech.ebookstore.model.SubCategory;
import com.aptech.ebookstore.util.DBConnection;

public class CategoryDao {

    public List<Category> getAllCategories() {
        List<Category> categories = new ArrayList<>();
        try (Connection conn = DBConnection.getConn()) {
            String query = "SELECT * FROM categories";
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                category.setDescription(rs.getString("description"));
                category.setSubCategories(getSubCategoriesByCategoryId(category.getId()));
                categories.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    public List<SubCategory> getSubCategoriesByCategoryId(int categoryId) {
        List<SubCategory> subCategories = new ArrayList<>();
        try (Connection conn = DBConnection.getConn()) {
            String query = "SELECT * FROM sub_categories WHERE parent_id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, categoryId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                SubCategory subCategory = new SubCategory();
                subCategory.setId(rs.getInt("id"));
                subCategory.setName(rs.getString("name"));
                subCategory.setDescription(rs.getString("description"));
                subCategories.add(subCategory);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return subCategories;
    }
}