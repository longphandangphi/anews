package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Category;
import utils.DBConnectionUtil;

public class CategoryDAO {
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement pst;

	public List<Category> getItems() {
		List<Category> catList = new ArrayList<Category>();
		conn = DBConnectionUtil.getConnection();
		final String SQL = "SELECT id, name FROM categories";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(SQL);
			while (rs.next()) {
				Category cat = new Category(rs.getInt("id"), rs.getString("name"));
				catList.add(cat);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, st, rs);
		}
		return catList;
	}

	public static void main(String[] args) {
		System.out.println(new CategoryDAO().getItems().size());
	}

	public Category getCateItem(int cat_id) {
		Category cateItem = null;
		conn = DBConnectionUtil.getConnection();
		final String sql = "SELECT name FROM categories WHERE id = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, cat_id);
			rs = pst.executeQuery();
			if (rs.next()) {
				cateItem = new Category(rs.getString("name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, pst, rs);
		}
		return cateItem;
	}
}
