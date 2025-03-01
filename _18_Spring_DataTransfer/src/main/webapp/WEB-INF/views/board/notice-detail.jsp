<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 24. 7. 15.
  Time: 오전 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
    <div>
        <jsp:include page="${pageContext.request.contextPath}/header.jsp"></jsp:include>

        <main>
            <div class="container w-50 mt-5 mb-5">
                <h4>공지사항 상세</h4>
            </div>
            <div class="container mt-3 w-50">
                <form id="updateForm" action="#" method="post">
                    <div class="form-group">
                        <label for="title">제목</label>
                        <input type="text" class="form-control" id="title" name="title" value="공지사항" required>
                    </div>
                    <div class="form-group mt-3">
                        <label for="writer">작성자</label>
                        <input type="text" class="form-control" id="writer" name="writer" value="관리자" readonly>
                    </div>
                    <div class="form-group mt-3">
                        <label for="content">내용</label>
                        <textarea class="form-control" id="content" name="content" rows="10" required>공지사항</textarea>
                    </div>
                    <div class="form-group mt-3">
                        <label for="regdate">등록일</label>
                        <input type="text" class="form-control" id="regdate" name="regdate" value="2024-06-28" required>
                    </div>
                    <div class="form-group mt-3">
                        <label for="moddate">수정일</label>
                        <input type="text" class="form-control" id="moddate" name="moddate" value="2024-06-28" required>
                    </div>
                    <div class="form-group mt-3">
                        <label for="cnt">조회수</label>
                        <input type="text" class="form-control" id="cnt" name="cnt" value="0" required>
                    </div>
                    <div class="form-group mt-3">
                        <label for="uploadFiles">파일첨부</label>
                        <input class="form-control" type="file" name="uploadFiles" id="uploadFiles" multiple>
                        <div id="image-preview">
                            <input type="file" id="changeFiles" name="changeFiles" style="display: none;"
                                   multiple>
                            <p style="color: red; font-size:0.9rem;">
                                파일을 변경하려면 이미지를 클릭하세요. 파일을 다운로드하려면 파일이름을 클릭하세요. 파일을 추가하려면 파일 선택 버튼을 클릭하세요.
                            </p>
                            <div id="preview" class="mt-3 text-center"
                                 data-placeholder="파일을 첨부하려면 파일선택 버튼을 누르세요.">
                            </div>
                        </div>
                    </div>
                    <div class="container mt-3 mb-5 w-50 text-center">
                        <button type="submit" id="btn-update" class="btn btn-outline-secondary">수정</button>
                        <button type="button" id="btn-delete" class="btn btn-outline-secondary ml-2" onclick="location.href='/board/deleteBoard.do?boardNo=${getBoard.boardNo}'">삭제</button>
                    </div>
                </form>
            </div>
        </main>

        <jsp:include page="${pageContext.request.contextPath}/footer.jsp"></jsp:include>
    </div>
</body>
</html>
