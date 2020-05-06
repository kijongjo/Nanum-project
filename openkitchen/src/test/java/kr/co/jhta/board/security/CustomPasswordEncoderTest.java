package kr.co.jhta.board.security;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
//스프링 설정 파일
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/security-context.xml", })
public class CustomPasswordEncoderTest {
	@Setter(onMethod = @__({ @Autowired }))
	private DataSource ds;
	
	@Setter
	@Autowired
	@Qualifier("encoder")
	private PasswordEncoder passEncoder;

	@Test
	public void test() {
		PreparedStatement pstmt = null;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			System.out.println(conn);

			String sql = "insert into member values (member_memno_seq.nextval, ?,?,?,'1',sysdate)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "dd");
			pstmt.setString(2, "user5");
			String pwd = passEncoder.encode("321"); //이 문자를 인코딩한 값을 넣어서 인코드?
			pstmt.setString(3, pwd);

			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
				try {
					if (pstmt != null)pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	}
}
