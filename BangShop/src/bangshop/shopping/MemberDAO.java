package bangshop.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();

	// getter
	public static MemberDAO getInstance() {
		return instance;
	}

	// constructor
	public MemberDAO() {
	}

	// 커넥션 풀로부터 커넥션 객체를 얻어내는 메소드
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/bangshopdb");

		return ds.getConnection();
	} // getConnection() method

	// 회원가입 메소드
	public void insertMember(MemberDTO dto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into member values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPass());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getAddr());
			pstmt.setString(6, dto.getPhone());
			pstmt.setString(7, dto.getBirth());

			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("회원 정보 입력 성공!");
			} else {
				System.out.println("회원 정보 입력 실패!!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	} // insertMember() method

	// 해당 id가 존재하는지 검사하는 메소드
	public int selectId(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		int rtnVal = 0;

		try {
			conn = getConnection();
			sql = "select id from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("회원 정보 검색 성공!");
			} else {
				System.out.println("회원 정보 검색 실패!!");
			}

			rs = pstmt.executeQuery();
			if (rs.next()) { // 해당 id가 존재하면
				rtnVal = 1;
			} else { // 존재하지 않으면
				rtnVal = -1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return rtnVal;
	} // selectId() method

	// 해당 id에 알맞은 pass를 입력하였는지 확인하는 메소드
	public int checkPass(String id, String pass) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		int rtnVal = -1;
		String dbpasswd = "";

		try {
			conn = getConnection();
			sql = "select pass from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) { // 해당 id가 존재하면
				dbpasswd = rs.getString("pass");
				if (dbpasswd.equals(pass)) { // 비밀번호가 맞으면
					rtnVal = 1; // 인증성공
				} else {
					rtnVal = 0; // 비밀번호 틀림
				}
			} else {
				// 해당 id가 존재하지 않으면
				rtnVal = -1;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return rtnVal;
	} // checkPass() method

}
