<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Spring MVC - Databinding</title>
        <base href="${pageContext.servletContext.contextPath}/">
</head>
<style>
input[type=text], select {
    width: 20%;
    padding: 12px 20px;
 
   text-align: center;  
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submits] {
    width: 10%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
     text-align: center;  
}
input[type=submit] {
    width: 50%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    
}


input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 5px;
}
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}

    

</style>
<body>
    

    <div style="text-align: center">
    <h2>Quản lý sinh viên</h2>
       <form style="text-align: center;">

          
            <input type="submits" value="Search" name="major" class="btn-danger" style="border-radius: 5px; padding: 5px 28px;margin-left:10px" />

        </form>
   
    <form:form action="student3.html" modelAttribute="student">
        <div >Mã SV</div>
        <form:input type="text" path="masv" readonly="true"/>
        <div class="1">Họ và tên</div>
        <form:input type="text" path="name"/>

        <div class="1">Điểm</div>
        <form:input type="text" path="mark"/>

        <div class="1">Chuyên ngành</div>
         <form:select path="major" items="${major}" 
                itemLabel="major" itemValue="id"/>
 
        <div>
           <input type="text" name="txtSearch" value=""/>
             <button  class="button button1" name="btnSearch">Search</button>
            <button  class="button button1" name="btnInsert">Thêm</button>
            <button class="button button1" name="btnUpdate">Cập nhật</button>         
        </div>
    </form:form>
    <br>            
    
        
    <table style=" border-collapse: collapse;
    width: 100%;"
>  
        <tr style=" padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd; background-color: #4CAF50;
    color: white;">
            <th>Masv</th>
            <th>Name</th>
            <th>Mark</th>
            <th>Major</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="rows" items="${listStudent}">
            <form action="student3/delete.html">
                <tr style=" padding: 8px;
   
    border-bottom: 1px solid #ddd;">
                <td>${rows.masv}</td>
                <td>${rows.name}</td>
                <td>${rows.mark}</td>
                <td>${rows.major}</td>
                <c:url var="edit" value="student3/edit.html">
                    <c:param name="txtMasv" value="${rows.masv}"/>
                    <c:param name="txtName" value="${rows.name}"/>
                    <c:param name="txtMark" value="${rows.mark}"/>
                    <c:param name="txtMajor" value="${rows.major}"/>
                </c:url>
                <td><a href="${edit}">Edit</a></td>
                <td>
                    <input type="hidden" name="txtMasv" value="${rows.masv}"/>
                    <input type="submit" name="action" value="Delete"/>
                </td>
            </tr>
            </form>
        </c:forEach>    
    </table>
    </div>
</body>
</html>
