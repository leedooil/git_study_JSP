package sec03.brd02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	private DataSource dataFactory;
	Connection conn;
	PreparedStatement pstmt;
	
	public BoardDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/servletex");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List selectAllArticles(){
		List articlesList = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select function_hierarchical() as articleNO, @level as level, title, content, id, imageFileName, writeDate"
					+ " from (SELECT @start_with:=0, @articleNO:=@start_with, @LEVEL:=0) tbl"
					+ " join t_board";
//					+ " ORDER BY articleNO";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int level = rs.getInt("level");
				int articleNO = rs.getInt("articleNO");
				/* int parentNO = rs.getInt("parentNO"); */
				String id = rs.getString("id");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String imageFileName = rs.getString("imageFileName");
				Date writeDate = rs.getDate("writeDate");
				ArticleVO article = new ArticleVO();
				article.setLevel(level);
				article.setArticleNO(articleNO);
				/* article.setParentNO(parentNO); */
				article.setTitle(title);
				article.setContent(content);
				article.setId(id);
				article.setWriteDate(writeDate);
				article.setImageFileName(imageFileName);
				articlesList.add(article);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return articlesList;
	}
	private int getNewArticleNO() {
		try {
			conn = dataFactory.getConnection();
			String query = "select max(articleNO) from t_board";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) 
				return (rs.getInt(1)+1);
				rs.close();
				pstmt.close();
				conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public void insertNewArticle(ArticleVO article) {
		try {
			conn = dataFactory.getConnection();
			int articleNO = getNewArticleNO();
			/* int parentNO = article.getParentNO(); */
			String title = article.getTitle();
			String content = article.getContent();
			String imageFileName = article.getImageFileName();
			/* Date writeDate = article.getWriteDate(); */
			String id = article.getId();
			String query = "insert into t_board (articleNO, title, content, imageFileName, id)"+" values (?,?,?,?,?)";
			System.out.println(query);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, articleNO);
			/* pstmt.setInt(2, parentNO); */
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setString(4, imageFileName);
			/* pstmt.setDate(5, writeDate); */
			pstmt.setString(5, id);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}


























































