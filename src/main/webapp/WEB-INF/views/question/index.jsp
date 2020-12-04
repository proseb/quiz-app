<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>

<h3>Quiz</h3>
<h4 class="text-center"><a href="${contextPath}/welcome">Strona główna</a></h4>
<form method="POST" action="${pageContext.request.contextPath}/question/submit">
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
        </li>
    </c:forEach>
</ol>
    <br>
    <input type="submit" value="Wyślij">
</form>
</body>
</html>
