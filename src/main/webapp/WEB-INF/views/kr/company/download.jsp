<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.BufferedOutputStream" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.IOException" %>
<%
    FileInputStream fis = null;
    BufferedOutputStream bos = null;

    HttpServletRequest httpServletRequest = null;

    System.out.println(httpServletRequest.getParameter("fileName"));

    try {
        String pdfFileName = "http://images.wooriat.com/Government/" + request.getParameter("fileName");
        File pdfFile = new File(pdfFileName);

        response.setContentType("application/pdf");
        response.addHeader("Content-Disposition", "attachment; filename="+pdfFile.getName());

        fis = new FileInputStream(pdfFile);

        int size = fis.available(); //지정 파일에서 읽을 수 있는 바이트 수를 반환

        byte[] buf = new byte[size]; //버퍼설정

        int readCount = fis.read(buf);



        response.flushBuffer();

        bos = new BufferedOutputStream(response.getOutputStream());

        bos.write(buf, 0, readCount);

        bos.flush();





    } catch(Exception e) {

        e.printStackTrace();

    } finally {

        try {

            if (fis != null) fis.close(); //close는 꼭! 반드시!

            if (bos != null) bos.close();

        } catch (IOException e) {

            e.printStackTrace();

        }

    }
%>
<!DOCTYPE html>
<html lang="ko">
<body>
</body>
</html>