<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleStudentServiceImplProxyid" scope="session" class="com.unilib.service.StudentServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleStudentServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleStudentServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleStudentServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.unilib.service.StudentServiceImpl getStudentServiceImpl10mtemp = sampleStudentServiceImplProxyid.getStudentServiceImpl();
if(getStudentServiceImpl10mtemp == null){
%>
<%=getStudentServiceImpl10mtemp %>
<%
}else{
        if(getStudentServiceImpl10mtemp!= null){
        String tempreturnp11 = getStudentServiceImpl10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String pin_2id=  request.getParameter("pin18");
            java.lang.String pin_2idTemp = null;
        if(!pin_2id.equals("")){
         pin_2idTemp  = pin_2id;
        }
        String name_3id=  request.getParameter("name20");
            java.lang.String name_3idTemp = null;
        if(!name_3id.equals("")){
         name_3idTemp  = name_3id;
        }
        String id_4id=  request.getParameter("id22");
            java.lang.Integer id_4idTemp = null;
        if(!id_4id.equals("")){
         id_4idTemp  = java.lang.Integer.valueOf(id_4id);
        }
        %>
        <jsp:useBean id="com1unilib1dao1Student_1id" scope="session" class="com.unilib.dao.Student" />
        <%
        com1unilib1dao1Student_1id.setPin(pin_2idTemp);
        com1unilib1dao1Student_1id.setName(name_3idTemp);
        com1unilib1dao1Student_1id.setId(id_4idTemp);
        boolean validateStudent13mtemp = sampleStudentServiceImplProxyid.validateStudent(com1unilib1dao1Student_1id);
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(validateStudent13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>