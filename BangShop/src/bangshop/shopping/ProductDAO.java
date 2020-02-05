package bangshop.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ProductDAO {
	
	private static ProductDAO instance = new ProductDAO();

	// getter
	public static ProductDAO getInstance() {
		return instance;
	}

	// constructor
	public ProductDAO() {
	}

	// 커넥션 풀로부터 커넥션 객체를 얻어내는 메소드
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/bangshopdb");

		return ds.getConnection();
	} // getConnection() method
	
	// 상품 등록
	public void insertProduct(ProductDTO dto) throws Exception {
		if ((dto.getDeliPay() == null || dto.getDeliPay().equals(""))
				&& (dto.getChangeOk() == null || dto.getChangeOk().equals(""))) {
			insertProductNotBoth(dto);
		} else if (dto.getDeliPay() == null || dto.getDeliPay().equals("")) {
			insertProductNotDeliPay(dto);
		} else if (dto.getChangeOk() == null || dto.getChangeOk().equals("")) {
			insertProductNotChangeOk(dto);
		} else {
			insertProductAll(dto);
		}
	} // insertProduct() method
	
	// 상품 등록 - 모든 정보
	public void insertProductAll(ProductDTO dto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into product(image, category, place, pro_status, title, price, deli_pay, change_ok, pro_count, pro_comment, tag) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getImage());
			pstmt.setString(2, dto.getCategory());
			pstmt.setString(3, dto.getPlace());
			pstmt.setString(4, dto.getProStatus());
			pstmt.setString(5, dto.getTitle());
			pstmt.setString(6, dto.getPrice());
			pstmt.setString(7, dto.getDeliPay());
			pstmt.setString(8, dto.getChangeOk());
			pstmt.setString(9, dto.getProCount());
			pstmt.setString(10, dto.getProComment());
			pstmt.setString(11, dto.getTag());

			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("상품 정보 입력 성공!");
			} else {
				System.out.println("상품 정보 입력 실패!!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	} // insertProductAll() method
	
	// 상품 등록 - 택배비포함 제외
	public void insertProductNotDeliPay(ProductDTO dto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into product(image, category, place, pro_status, title, price, change_ok, pro_count, pro_comment, tag) "
					+ "values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getImage());
			pstmt.setString(2, dto.getCategory());
			pstmt.setString(3, dto.getPlace());
			pstmt.setString(4, dto.getProStatus());
			pstmt.setString(5, dto.getTitle());
			pstmt.setString(6, dto.getPrice());
			pstmt.setString(7, dto.getChangeOk());
			pstmt.setString(8, dto.getProCount());
			pstmt.setString(9, dto.getProComment());
			pstmt.setString(10, dto.getTag());

			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("상품 정보 입력 성공!");
			} else {
				System.out.println("상품 정보 입력 실패!!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	} // insertProductNotDeliPay() method
	
	// 상품 등록 - 교환가능 제외
	public void insertProductNotChangeOk(ProductDTO dto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into product(image, category, place, pro_status, title, price, deli_pay, pro_count, pro_comment, tag) "
					+ "values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getImage());
			pstmt.setString(2, dto.getCategory());
			pstmt.setString(3, dto.getPlace());
			pstmt.setString(4, dto.getProStatus());
			pstmt.setString(5, dto.getTitle());
			pstmt.setString(6, dto.getPrice());
			pstmt.setString(7, dto.getDeliPay());
			pstmt.setString(8, dto.getProCount());
			pstmt.setString(9, dto.getProComment());
			pstmt.setString(10, dto.getTag());

			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("상품 정보 입력 성공!");
			} else {
				System.out.println("상품 정보 입력 실패!!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	} // insertProductNotChangeOk() method
	
	// 상품 등록 - 택배비포함, 교환가능 제외
	public void insertProductNotBoth(ProductDTO dto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into product(image, category, place, pro_status, title, price, pro_count, pro_comment, tag) "
					+ "values(?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getImage());
			pstmt.setString(2, dto.getCategory());
			pstmt.setString(3, dto.getPlace());
			pstmt.setString(4, dto.getProStatus());
			pstmt.setString(5, dto.getTitle());
			pstmt.setString(6, dto.getPrice());
			pstmt.setString(7, dto.getProCount());
			pstmt.setString(8, dto.getProComment());
			pstmt.setString(9, dto.getTag());

			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("상품 정보 입력 성공!");
			} else {
				System.out.println("상품 정보 입력 실패!!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	} // insertProductNotBoth() method
	
	// 찜 등록 - 모든 정보
	public void insertJjimProduct(ProductDTO dto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into jjim(image, category, place, pro_status, title, price, deli_pay, change_ok, pro_count, pro_comment, tag) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getImage());
			pstmt.setString(2, dto.getCategory());
			pstmt.setString(3, dto.getPlace());
			pstmt.setString(4, dto.getProStatus());
			pstmt.setString(5, dto.getTitle());
			pstmt.setString(6, dto.getPrice());
			pstmt.setString(7, dto.getDeliPay());
			pstmt.setString(8, dto.getChangeOk());
			pstmt.setString(9, dto.getProCount());
			pstmt.setString(10, dto.getProComment());
			pstmt.setString(11, dto.getTag());

			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("상품 정보 입력 성공!");
			} else {
				System.out.println("상품 정보 입력 실패!!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	} // insertJjimProduct() method

	// 찜 목록 - 간단히
	public List<ProductDTO> getJjimProductSimple() throws Exception {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<ProductDTO> productList = null;
		
		try {
			conn = getConnection();
			String sql = "select pro_no, image, title, price from jjim";
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				productList = new ArrayList<ProductDTO>();
				// 검색 결과가 존재하는지 검색한 후이기 때문에 do~while문 사용
				// while문을 사용하면 처음 값은 add되지 않음
				 do {
					ProductDTO dto = new ProductDTO();
					dto.setProNo(rs.getInt(1));
					dto.setImage(rs.getString(2));
					dto.setTitle(rs.getString(3));
					dto.setPrice(rs.getString(4));

					productList.add(dto);
				} while (rs.next());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
		return productList;
	} // getProductJjimSimple() method
	
	// 메인에서 보여지는 상품 목록 - 간단히
	public List<ProductDTO> getProductSimple() throws Exception {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<ProductDTO> productList = null;
		
		try {
			conn = getConnection();
			String sql = "select pro_no, image, title, price from product";
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				productList = new ArrayList<ProductDTO>();
				// 검색 결과가 존재하는지 검색한 후이기 때문에 do~while문 사용
				// while문을 사용하면 처음 값은 add되지 않음
				 do {
					ProductDTO dto = new ProductDTO();
					dto.setProNo(rs.getInt(1));
					dto.setImage(rs.getString(2));
					dto.setTitle(rs.getString(3));
					dto.setPrice(rs.getString(4));

					productList.add(dto);
				} while (rs.next());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
		return productList;
	} // getProductSimple() method
	
	// 메인에서 보여지는 상품 목록 - 자세히
	public ProductDTO getProductDetail(int proNo) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;
		
		try {
			conn = getConnection();
			String sql = "select * from product where pro_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, proNo);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new ProductDTO();
				dto.setProNo(rs.getInt(1));
				dto.setImage(rs.getString(2));
				dto.setCategory(rs.getString(3));
				dto.setPlace(rs.getString(4));
				dto.setProStatus(rs.getString(5));
				dto.setTitle(rs.getString(6));
				dto.setPrice(rs.getString(7));
				dto.setDeliPay(rs.getString(8));
				dto.setChangeOk(rs.getString(9));
				dto.setProCount(rs.getString(10));
				dto.setProComment(rs.getString(11));
				dto.setTag(rs.getString(12));
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
		return dto;
	} // getProductDetail() method
	
	// 카테고리 선택시 상품 목록 - 간단히
	public List<ProductDTO> getProductCategory(String kind) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ProductDTO> productList = null;
		
		try {
			conn = getConnection();
			String sql = "select pro_no, image, title, price from product where category = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kind);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				productList = new ArrayList<ProductDTO>();
				// 검색 결과가 존재하는지 검색한 후이기 때문에 do~while문 사용
				// while문을 사용하면 처음 값은 add되지 않음
				 do {
					ProductDTO dto = new ProductDTO();
					dto.setProNo(rs.getInt(1));
					dto.setImage(rs.getString(2));
					dto.setTitle(rs.getString(3));
					dto.setPrice(rs.getString(4));

					productList.add(dto);
				} while (rs.next());
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
		return productList;
	} // getProductCategory() method
}
