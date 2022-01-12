<%--
  Created by IntelliJ IDEA.
  User: inhwan
  Date: 2022/01/10
  Time: 2:50 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<%--    <script type="text/javascript" src="<c:url value='/WEB-INF/js/jquery-3.5.1.min.js' />"></script>--%>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Title</title>
</head>
<body>
    <h1>Hi</h1>
    안녕, ${msg}
    <c:forEach var="item" items="${selectAll}">
        <div id="replace-div">
            <input type="text" value="${item.TEST_AGE}" />
            <table border="1">
                <tr>
                    <td>
                        안녕, ${msg}
                        ${item.TEST_AGE}
                    </td>
                </tr>
            </table>
            <c:out value="${item.TEST_NAME}"></c:out>
        </div>
    </c:forEach>
    <button id="test-btn">버튼</button>


<script>
    const testBtn = document.querySelector("#test-btn");

    <c:forEach var="item" items="${selectAll}">
        console.log('${item.TEST_NAME}');
        var abb = '${item.TEST_NAME}';
    </c:forEach>
    console.log(abb);

    testBtn.addEventListener("click", function (){
        const param ={
            "apple" : abb
        }
       $.ajax({
           url: "/test/apple",
           type: "get",
           data: param,
       }).done(function (fragment){
           console.log("성공");
           $("#replace-div").replaceWith(fragment);
           console.log(fragment);
       }).fail(function (){
           console.log("실패");
       })
    });


</script>
</body>
</html>
