<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.shuohe.fileApproval.*" %>
<%@page import="java.io.PrintWriter"%> 
<%@page import="java.util.*"%> 
<%

	//服务器端接到回调函数名字输出回调函数，客户端根据回调函数进行解析取得函数中json对象      
	response.setContentType("text/html; charset=utf-8");      
	String callback=request.getParameter("callback");
		      
	PrintWriter ss = response.getWriter(); 
	String sponsor=request.getParameter("sponsor");
	String leader=request.getParameter("leader");
	String describe=request.getParameter("describe");
	String file=request.getParameter("file");

	ss.print(callback+"("+FileApprovalDatabase.creatFileApprovalApplication(sponsor,leader,describe,file)+")");     
%>
