<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleBookInventoryServiceImplProxyid" scope="session" class="com.unilib.service.BookInventoryServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleBookInventoryServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleBookInventoryServiceImplProxyid.getEndpoint();
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
        sampleBookInventoryServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.unilib.service.BookInventoryServiceImpl getBookInventoryServiceImpl10mtemp = sampleBookInventoryServiceImplProxyid.getBookInventoryServiceImpl();
if(getBookInventoryServiceImpl10mtemp == null){
%>
<%=getBookInventoryServiceImpl10mtemp %>
<%
}else{
        if(getBookInventoryServiceImpl10mtemp!= null){
        String tempreturnp11 = getBookInventoryServiceImpl10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String publisher_2id=  request.getParameter("publisher28");
            java.lang.String publisher_2idTemp = null;
        if(!publisher_2id.equals("")){
         publisher_2idTemp  = publisher_2id;
        }
        String id_3id=  request.getParameter("id30");
            java.lang.Integer id_3idTemp = null;
        if(!id_3id.equals("")){
         id_3idTemp  = java.lang.Integer.valueOf(id_3id);
        }
        String status_4id=  request.getParameter("status32");
            java.lang.String status_4idTemp = null;
        if(!status_4id.equals("")){
         status_4idTemp  = status_4id;
        }
        String publisheddate_5id=  request.getParameter("publisheddate34");
            java.util.Calendar publisheddate_5idTemp = null;
        if(!publisheddate_5id.equals("")){
        java.text.DateFormat dateFormatpublisheddate34 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemppublisheddate34  = dateFormatpublisheddate34.parse(publisheddate_5id);
         publisheddate_5idTemp = new java.util.GregorianCalendar();
        publisheddate_5idTemp.setTime(dateTemppublisheddate34);
        }
        String isbn_6id=  request.getParameter("isbn36");
            java.lang.String isbn_6idTemp = null;
        if(!isbn_6id.equals("")){
         isbn_6idTemp  = isbn_6id;
        }
        String authors_7id=  request.getParameter("authors38");
            java.lang.String authors_7idTemp = null;
        if(!authors_7id.equals("")){
         authors_7idTemp  = authors_7id;
        }
        String title_8id=  request.getParameter("title40");
            java.lang.String title_8idTemp = null;
        if(!title_8id.equals("")){
         title_8idTemp  = title_8id;
        }
        String inlib_9id=  request.getParameter("inlib42");
            java.lang.Boolean inlib_9idTemp = null;
        if(!inlib_9id.equals("")){
         inlib_9idTemp  = java.lang.Boolean.valueOf(inlib_9id);
        }
        %>
        <jsp:useBean id="com1unilib1dao1Book_1id" scope="session" class="com.unilib.dao.Book" />
        <%
        com1unilib1dao1Book_1id.setPublisher(publisher_2idTemp);
        com1unilib1dao1Book_1id.setId(id_3idTemp);
        com1unilib1dao1Book_1id.setStatus(status_4idTemp);
        com1unilib1dao1Book_1id.setPublisheddate(publisheddate_5idTemp);
        com1unilib1dao1Book_1id.setIsbn(isbn_6idTemp);
        com1unilib1dao1Book_1id.setAuthors(authors_7idTemp);
        com1unilib1dao1Book_1id.setTitle(title_8idTemp);
        com1unilib1dao1Book_1id.setInlib(inlib_9idTemp);
        com.unilib.model.Validation saveBook13mtemp = sampleBookInventoryServiceImplProxyid.saveBook(com1unilib1dao1Book_1id);
if(saveBook13mtemp == null){
%>
<%=saveBook13mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD>
<%
if(saveBook13mtemp != null){
java.lang.Integer typestatus16 = saveBook13mtemp.getStatus();
        String tempResultstatus16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestatus16));
        %>
        <%= tempResultstatus16 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">bookAuthor:</TD>
<TD>
<%
if(saveBook13mtemp != null){
java.lang.String typebookAuthor18 = saveBook13mtemp.getBookAuthor();
        String tempResultbookAuthor18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebookAuthor18));
        %>
        <%= tempResultbookAuthor18 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">bookTitle:</TD>
<TD>
<%
if(saveBook13mtemp != null){
java.lang.String typebookTitle20 = saveBook13mtemp.getBookTitle();
        String tempResultbookTitle20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebookTitle20));
        %>
        <%= tempResultbookTitle20 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">publisher:</TD>
<TD>
<%
if(saveBook13mtemp != null){
java.lang.String typepublisher22 = saveBook13mtemp.getPublisher();
        String tempResultpublisher22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepublisher22));
        %>
        <%= tempResultpublisher22 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">statusMessage:</TD>
<TD>
<%
if(saveBook13mtemp != null){
java.lang.String typestatusMessage24 = saveBook13mtemp.getStatusMessage();
        String tempResultstatusMessage24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestatusMessage24));
        %>
        <%= tempResultstatusMessage24 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 44:
        gotMethod = true;
        String publisher_11id=  request.getParameter("publisher59");
            java.lang.String publisher_11idTemp = null;
        if(!publisher_11id.equals("")){
         publisher_11idTemp  = publisher_11id;
        }
        String id_12id=  request.getParameter("id61");
            java.lang.Integer id_12idTemp = null;
        if(!id_12id.equals("")){
         id_12idTemp  = java.lang.Integer.valueOf(id_12id);
        }
        String status_13id=  request.getParameter("status63");
            java.lang.String status_13idTemp = null;
        if(!status_13id.equals("")){
         status_13idTemp  = status_13id;
        }
        String publisheddate_14id=  request.getParameter("publisheddate65");
            java.util.Calendar publisheddate_14idTemp = null;
        if(!publisheddate_14id.equals("")){
        java.text.DateFormat dateFormatpublisheddate65 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemppublisheddate65  = dateFormatpublisheddate65.parse(publisheddate_14id);
         publisheddate_14idTemp = new java.util.GregorianCalendar();
        publisheddate_14idTemp.setTime(dateTemppublisheddate65);
        }
        String isbn_15id=  request.getParameter("isbn67");
            java.lang.String isbn_15idTemp = null;
        if(!isbn_15id.equals("")){
         isbn_15idTemp  = isbn_15id;
        }
        String authors_16id=  request.getParameter("authors69");
            java.lang.String authors_16idTemp = null;
        if(!authors_16id.equals("")){
         authors_16idTemp  = authors_16id;
        }
        String title_17id=  request.getParameter("title71");
            java.lang.String title_17idTemp = null;
        if(!title_17id.equals("")){
         title_17idTemp  = title_17id;
        }
        String inlib_18id=  request.getParameter("inlib73");
            java.lang.Boolean inlib_18idTemp = null;
        if(!inlib_18id.equals("")){
         inlib_18idTemp  = java.lang.Boolean.valueOf(inlib_18id);
        }
        %>
        <jsp:useBean id="com1unilib1dao1Book_10id" scope="session" class="com.unilib.dao.Book" />
        <%
        com1unilib1dao1Book_10id.setPublisher(publisher_11idTemp);
        com1unilib1dao1Book_10id.setId(id_12idTemp);
        com1unilib1dao1Book_10id.setStatus(status_13idTemp);
        com1unilib1dao1Book_10id.setPublisheddate(publisheddate_14idTemp);
        com1unilib1dao1Book_10id.setIsbn(isbn_15idTemp);
        com1unilib1dao1Book_10id.setAuthors(authors_16idTemp);
        com1unilib1dao1Book_10id.setTitle(title_17idTemp);
        com1unilib1dao1Book_10id.setInlib(inlib_18idTemp);
        com.unilib.model.Validation validateBook44mtemp = sampleBookInventoryServiceImplProxyid.validateBook(com1unilib1dao1Book_10id);
if(validateBook44mtemp == null){
%>
<%=validateBook44mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD>
<%
if(validateBook44mtemp != null){
java.lang.Integer typestatus47 = validateBook44mtemp.getStatus();
        String tempResultstatus47 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestatus47));
        %>
        <%= tempResultstatus47 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">bookAuthor:</TD>
<TD>
<%
if(validateBook44mtemp != null){
java.lang.String typebookAuthor49 = validateBook44mtemp.getBookAuthor();
        String tempResultbookAuthor49 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebookAuthor49));
        %>
        <%= tempResultbookAuthor49 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">bookTitle:</TD>
<TD>
<%
if(validateBook44mtemp != null){
java.lang.String typebookTitle51 = validateBook44mtemp.getBookTitle();
        String tempResultbookTitle51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebookTitle51));
        %>
        <%= tempResultbookTitle51 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">publisher:</TD>
<TD>
<%
if(validateBook44mtemp != null){
java.lang.String typepublisher53 = validateBook44mtemp.getPublisher();
        String tempResultpublisher53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepublisher53));
        %>
        <%= tempResultpublisher53 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">statusMessage:</TD>
<TD>
<%
if(validateBook44mtemp != null){
java.lang.String typestatusMessage55 = validateBook44mtemp.getStatusMessage();
        String tempResultstatusMessage55 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestatusMessage55));
        %>
        <%= tempResultstatusMessage55 %>
        <%
}%>
</TD>
</TABLE>
<%
}
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