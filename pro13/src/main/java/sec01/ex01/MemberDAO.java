package sec01.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class MemberDAO {

	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public MemberDAO() {
		
	}
	
	public List listMembers() {
		List list = new ArrayList();
		try {
			//DB랑 연결시켜
			con = dataFactory.getConnection();
			//DB에 있는 데이터를 내림차순으로 불러와
			String query = "select * from t_member order by joinDate desc";
			System.out.println("prepareStatement : "+query);
			//select구문을 처리할수 있도록 환경설정
			pstmt = con.prepareStatement(query);
			//executeQuery로 select SQL구문을 실행시킴
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				//new 예약어로 MemberBean 객체를 생성해서 setter를 이용해 값을 설정해줌
				MemberBean vo = new MemberBean();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				//받은 값들을 관리하기 어려우니 list객체에 주소값들을 넣어주고 첫 째 0인덱스로 넣어줌
				list.add(vo);
			}
			//이렇게 작은범위부터 큰범위 까지 짤라주는게 더 정확한 방법
			rs.close();
			pstmt.close();
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
		//회원가입시 입력받은 값을 DB랑 연결 해주는 메소드
	public void addMember(MemberBean memberBean) {
		try {
			//DB랑 톰캣을 커넥터를 이용해 연결시켜 영구적으로 보관하겠다.
			Connection con = dataFactory.getConnection();
			String id = memberBean.getId();
			String pwd = memberBean.getPwd();
			String name = memberBean.getName();
			String email = memberBean.getEmail();
			String query = "insert into t_member";
			query += "(id,pwd,name,email)";
			query += "values(?,?,?,?)";
			System.out.println("prepareStatement : "+query);
			//DB에 실행시킬 환경설정을 끝내주는것
			pstmt = con.prepareStatement(query);
			//DB환경설정 끝낸후 ?에 대한 명시를해주는것. 코드약속임
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			//얘 자체가 진짜 실행하는 것.
			pstmt.executeUpdate();
			//사용후 연결을 끊어주는것.
			pstmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
