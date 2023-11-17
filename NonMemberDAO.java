package frontweb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import frontweb.database.DBCon;
import frontweb.vo.NonMember;

public class NonMemberDAO {
	public int insertNonMember(NonMember ins) {
		int insCnt = 0;
		String sql = "INSERT INTO nonmember values(?, ?, ?, ?)";
		try(
				 Connection con = DBCon.con();
				 PreparedStatement pstmt = con.prepareStatement(sql);
				
				 ){
			 con.setAutoCommit(false);
			 // 처리코드1
			 pstmt.setString(1, ins.getName());
			 pstmt.setString(2, ins.getPhone());
			 pstmt.setString(3, ins.getEmail());
			 pstmt.setInt(4, ins.getPwd());
			 insCnt = pstmt.executeUpdate();
			 con.commit();
			
			 
		 }catch(SQLException e){
			 System.out.println("DB 에러 : "+e.getMessage());
			// con.rollback();
		 }catch(Exception e){
			 System.out.println("일반 에러 : "+e.getMessage());
		 }
		
		return insCnt;
	}
	public NonMember getNonMemberInfo(String name, String phone, int pwd) {
		NonMember sch = null;
		String sql = "SELECT * FROM NONMEMBER \r\n"
				+ "WHERE name= ? AND phoneno = ? AND pwd = ? ";
		 try(
				 Connection con = DBCon.con();
				 PreparedStatement pstmt = con.prepareStatement(sql);
				 ){
			 // 처리코드1
			 pstmt.setString(1, name);
			 pstmt.setString(2, phone);
			 pstmt.setInt(3, pwd);
			 
			 try(
					 ResultSet rs = pstmt.executeQuery();
					 ){
				// 처리코드2
				if(rs.next()) {
					sch = new NonMember(
							rs.getString("name"),
							rs.getString("phoneno"),
							rs.getString("email"),
							rs.getInt("pwd")
							);
							
				}
				
			 }
			 
		 }catch(SQLException e){
			 System.out.println("DB 에러 : "+e.getMessage());
		 }catch(Exception e){
			 System.out.println("일반 에러 : "+e.getMessage());
		 }
		return sch;
	}
	public static void main(String[] args) {
		NonMemberDAO dao = new NonMemberDAO();
		NonMember sch = new NonMember();
		sch = dao.getNonMemberInfo("아이엔", "01012341234", 12346);
		if(sch==null) {
			System.out.println("조회된 정보 없음");
		}
		else {
			System.out.println(sch.getName());
		}
		
	}
}
