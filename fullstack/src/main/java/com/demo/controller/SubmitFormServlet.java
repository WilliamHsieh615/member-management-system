package com.demo.controller;

import com.demo.domain.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

@WebServlet("/SubmitFormServlet") // JSP 表單的 action 需對應這條路徑
public class SubmitFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/work?useUnicode=true&characterEncoding=utf8";
	private static final String DB_USER = "root";
	private static final String DB_PASSWORD = "12345678";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// 封裝表單資料到 Member Bean
		Member member = new Member();
		member.setName(request.getParameter("name"));
		member.setSex(request.getParameter("sex"));
		member.setBirthday(request.getParameter("birthday"));
		member.setPhone(request.getParameter("phone"));
		member.setMail(request.getParameter("mail"));
		member.setZipcode(request.getParameter("zipcode"));
		member.setCounty(request.getParameter("county"));
		member.setDistrict(request.getParameter("district"));
		member.setAddressDetail(request.getParameter("addressDetail"));
		member.setEducational(request.getParameter("educational"));
		member.setContent(request.getParameter("content"));
		member.setAgreePolicy("true".equals(request.getParameter("agreePolicy")));
		member.setAgreeInfo("true".equals(request.getParameter("agreeInfo")));

		// 資料寫入 MySQL
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
				String sql = "INSERT INTO members (name, sex, birthday, phone, mail, zipcode, county, district, addressDetail, educational, content, agreePolicy, agreeInfo) "
						+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, member.getName());
				ps.setString(2, member.getSex());
				ps.setString(3, member.getBirthday());
				ps.setString(4, member.getPhone());
				ps.setString(5, member.getMail());
				ps.setString(6, member.getZipcode());
				ps.setString(7, member.getCounty());
				ps.setString(8, member.getDistrict());
				ps.setString(9, member.getAddressDetail());
				ps.setString(10, member.getEducational());
				ps.setString(11, member.getContent());
				ps.setBoolean(12, member.isAgreePolicy());
				ps.setBoolean(13, member.isAgreeInfo());

				ps.executeUpdate();
			}
		} catch (Exception e) {
			throw new ServletException("資料寫入失敗", e);
		}

		// 寫入成功後導向 finish.html
		response.sendRedirect("finish.html");
	}
}


