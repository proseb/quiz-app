<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test-form</title>
</head>
<body>

<h4 class="text-center"><a href="${contextPath}/welcome">Strona główna</a></h4>

<h3>Test - Środowisko przyrodnicze Polski</h3>

<form method="POST" action="${pageContext.request.contextPath}/test/result">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <ol type="1">
        <c:forEach var="question" items="${questions}">
            <li>
                    ${question.content}
                <input type="hidden" name="questionId" value="${question.id}">

                <ol type="a">
                    <c:forEach var="answer" items="${question.answers}">
                        <li>
                            <input type="radio" name="question_${question.id}" value="${answer.id}">
                                ${answer.content}
                        </li>
                    </c:forEach>
                </ol>
                <br>
            </li>
        </c:forEach>
    </ol>
    <br>
    <input type="submit" value="Zakończ test">
</form>
</body>
</html>
