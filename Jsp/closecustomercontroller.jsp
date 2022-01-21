<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%@ page import="Insurance.*" %>



<%
    String fullname = request.getParameter("fullname");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String gender = request.getParameter("gender");
    String investmentprofile = request.getParameter("investmentprofile");
    String Markets = request.getParameter("Markets");
    String Savings = request.getParameter("Savings");
    String Pension = request.getParameter("Pension");
    String Description = request.getParameter("Description");
    CustomerService customer = new CustomerService();

    if (fullname == null || email == null || phone == null || phone.length() != 10) {
%>
<%request.setAttribute("error", "errorRegister");%>
<%request.setAttribute("error1", fullname);%>
<%request.setAttribute("error2", email);%>
<%
    if (fullname == null) {
%>
<%request.setAttribute("error1", "name");%>
<%
    }
    if (email == null) {
%>
<%request.setAttribute("error2", "email");%>
<%
    }
    if (phone == null || phone.length() != 10) {
%>
<%request.setAttribute("error3", "phone");%>
<%
        }
    }
// convert to UTF-8 to support Greek characters
if (fullname != null) {
	fullname = new String(fullname.getBytes("ISO-8859-1"), "UTF-8");
}

if (investmentprofile != null) {
	investmentprofile = new String(investmentprofile.getBytes("ISO-8859-1"), "UTF-8");
}

if (Markets != null) {
	Markets = new String(Markets.getBytes("ISO-8859-1"), "UTF-8");
}

if (Savings != null) {
	Savings = new String(Savings.getBytes("ISO-8859-1"), "UTF-8");
}


if (Pension != null) {
	Pension = new String(Pension.getBytes("ISO-8859-1"), "UTF-8");
}


if (Description != null) {
	Description = new String(Description.getBytes("ISO-8859-1"), "UTF-8");
}
%>
<%

//name && surname check all acceptable conditions 
if (phone.length() == 10) {
    if (fullname != null) {
        Customer obj = new Customer(fullname, email, phone, gender, investmentprofile, Markets, Savings, Pension, Description );
        try {
            customer.register(obj);
        }  catch (Exception e) {
%>
<%request.setAttribute("error", "errorRegister");%>
<jsp:forward page="closecustomer.jsp" />
<%
        }
    }


%>



<%request.setAttribute("success_register", "Η εγγραφή ολοκληρώθηκε !");%>
<jsp:forward page="closecustomer.jsp" /> 

<%        
    } else {     
%>
<!-- addd alerttppedia not acceptable -->
<%request.setAttribute("error", "errorRegister");%>
<jsp:forward page="closecustomer.jsp" />
<%        
    }     
%>