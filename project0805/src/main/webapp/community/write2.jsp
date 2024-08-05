<%@page import="model.BoardCon"%>
<%@page import="model.BoardDAO"%>
<%@page import="model.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String temp;
int boardNo = Integer.parseInt((temp = request.getParameter("boardNo"))!=null?temp:"1");
BoardCon dao = new BoardDAO();
Board board = dao.getBoard(boardNo);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        table { width:680px; text-align:center; }
        th    { width:100px; background-color:cyan; }
        input[type=text], textarea { width:100%; }
    </style>
</head>
<body>

<form method="post" action="update.jsp">
<input type = "hidden" name = "boardNo" value = "<%=board.getBoardNo() %>">
    <table>
        <tr>
            <th>제목</th>
            <td><input type="text" name="title"  maxlength="80"
                       value="<%=board.getTitle()%>">
            </td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea name="content" rows="10"><%=board.getContent()%></textarea>
            </td>
        </tr>
    </table>

    <br>
    <input type="submit" value="저장">
    <input type="button" value="취소" onclick="history.back()">
</form>

</body>
</html>