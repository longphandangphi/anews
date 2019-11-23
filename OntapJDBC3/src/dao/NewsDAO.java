package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.News;
import utils.DBConnectionUtil;

public class NewsDAO {
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement pst;

	public List<News> getItems() {
		List<News> newsList = new ArrayList<News>();
		conn = DBConnectionUtil.getConnection();
		final String SQL = "SELECT id, name, description, detail FROM news ORDER BY id DESC";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(SQL);
			while (rs.next()) {
				News news = new News(rs.getInt("id"), rs.getString("name"), rs.getString("description"),
						rs.getString("detail"));
				newsList.add(news);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, st, rs);
		}
		return newsList;
	}

	public static void main(String[] args) {
		System.out.println(new NewsDAO().getNewsById(3).getName());
	}

	public List<News> getNewsByCat_id(int cat_id) {
		List<News> newsListByCat_id = new ArrayList<News>();
		conn = DBConnectionUtil.getConnection();
		final String sql = "SELECT id, name, description FROM news WHERE cat_id = ? ORDER BY id DESC";
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, cat_id);
			rs = pst.executeQuery();
			while (rs.next()) {
				News news = new News(rs.getInt("id"), rs.getString("name"), rs.getString("description"));
				newsListByCat_id.add(news);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, pst, rs);
		}
		return newsListByCat_id;
	}

	public News getNewsById(int id) {
		News newsById = null;
		conn = DBConnectionUtil.getConnection();
		final String sql = "SELECT name, detail FROM news WHERE id = ? ";
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if(rs.next()) {
				newsById = new News(rs.getString("name"), rs.getString("detail"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, pst, rs);
		}
		return newsById;
	}

	public int writeNews(String name, String description, String picture, String detail, String created_at, int cat_id) {
		int check = 0;
		conn = DBConnectionUtil.getConnection();
		final String sql = "INSERT INTO news(name, description, picture, detail, created_at, cat_id) VALUE(?,?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, name);
			pst.setString(2, description);
			pst.setString(3, picture);
			pst.setString(4, detail);
			pst.setString(5, created_at);
			pst.setInt(6, cat_id);
			
			pst.execute();
			check = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, pst, rs);
		}
		return check;
	}
}
