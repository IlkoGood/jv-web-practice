<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ATMS-Assignments</title>
</head>
<body>
<%@ include file="/WEB-INF/views/commons/buttonHeader.jsp"%><br>
<h3>Use this form to assign driver to <c:out value="${car.model}" /></h3><br>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}">
    Driver <select name="driver_id">
    <c:forEach items="${allDrivers}" var="driver">
        <option value="${driver.id}">
            <c:out value="${driver.id}" />.
            <c:out value="${driver.name}" /> -
            <c:out value="${driver.licenseNumber}" />
        </option>
    </c:forEach>
    </select><br>
    <input type="hidden" value="${car.id}" name="car_id" />
    <button type="submit">Add driver</button>
</form><br>
<h3>List of drivers</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${car.drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><input type="button" onclick="alert('DELETION NOT YET IMPLEMENTED')" value="DELETE"></td>
        </tr>
    </c:forEach>
</table><br>
</body>
</html>