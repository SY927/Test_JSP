package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.saeyan.dto.MemberVO;
import com.sun.xml.internal.bind.v2.runtime.Name;

public class MemberDAO {
	public MemberDAO() {
	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getinstance() {
		return instance;
	}

	public Connection getConnection() {
		Connection connection = null;
		DataSource dataSource = null;
		Context context = null;

		try {
			context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
			connection = dataSource.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return connection;
	}

	public int userCheck(String userid, String pwd) {
		int result = 1;
		String sql = "select pwd from member where userid=?";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userid);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				if (resultSet.getString("pwd") != null && resultSet.getString("pwd").equals(pwd)) {
					result = 1;
				} else {
					result = 0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null)
					connection.close();
				if (preparedStatement != null)
					preparedStatement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public MemberVO getMember(String userid) {
		MemberVO mVo = new MemberVO();
		String sql = "select * from member where userid=?";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userid);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				mVo.setName(resultSet.getString("name"));
				mVo.setUserid(resultSet.getString("userid"));
				mVo.setPwd(resultSet.getString("pwd"));
				mVo.setEmail(resultSet.getString("email"));
				mVo.setPhone(resultSet.getString("phone"));
				mVo.setAdmin(resultSet.getInt("admin"));
				// mVo.setAdmin(Integer.parseInt(resultSet.getString("admin")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null)
					connection.close();
				if (preparedStatement != null)
					preparedStatement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}

	public int confirmID(String userid) {
		int result = -1;

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			String sql = "SELECT userid from member where userid=?";
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, userid);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				if (resultSet.getString("userid").equals(userid))
					result = 1;
			} else {
				result = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null)
					connection.close();
				if (preparedStatement != null)
					preparedStatement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return result;

	}

	public int insertMember(MemberVO mvo) {
		int result = -1;
		String sql = "insert into member values(?,?,?,?,?,?)";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, mvo.getName());
			preparedStatement.setString(2, mvo.getUserid());
			preparedStatement.setString(3, mvo.getPwd());
			preparedStatement.setString(4, mvo.getEmail());
			preparedStatement.setString(5, mvo.getPhone());
			preparedStatement.setInt(6, mvo.getAdmin());
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				result = 1;
			} else {
				result = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null)
					connection.close();
				if (preparedStatement != null)
					preparedStatement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public int updateMember(MemberVO mvo) {
		int ri = -1;
		String query = "update member set pwd=?, email=?, phone=?, admin=? where userid=?";
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, mvo.getPwd());
			preparedStatement.setString(2, mvo.getEmail());
			preparedStatement.setString(3, mvo.getPhone());
			preparedStatement.setInt(4, mvo.getAdmin());
			preparedStatement.setString(5, mvo.getUserid());
			
			ri = preparedStatement.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ri;
	}
}
