<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleBookInformationServiceImplProxyid" scope="session" class="com.unilib.service.BookInformationServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleBookInformationServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleBookInformationServiceImplProxyid.getEndpoint();
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
        sampleBookInformationServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.unilib.service.BookInformationServiceImpl getBookInformationServiceImpl10mtemp = sampleBookInformationServiceImplProxyid.getBookInformationServiceImpl();
if(getBookInformationServiceImpl10mtemp == null){
%>
<%=getBookInformationServiceImpl10mtemp %>
<%
}else{
        if(getBookInformationServiceImpl10mtemp!= null){
        String tempreturnp11 = getBookInformationServiceImpl10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String publisher_2id=  request.getParameter("publisher34");
            java.lang.String publisher_2idTemp = null;
        if(!publisher_2id.equals("")){
         publisher_2idTemp  = publisher_2id;
        }
        String id_3id=  request.getParameter("id36");
            java.lang.Integer id_3idTemp = null;
        if(!id_3id.equals("")){
         id_3idTemp  = java.lang.Integer.valueOf(id_3id);
        }
        String status_4id=  request.getParameter("status38");
            java.lang.String status_4idTemp = null;
        if(!status_4id.equals("")){
         status_4idTemp  = status_4id;
        }
        String publisheddate_5id=  request.getParameter("publisheddate40");
            java.util.Calendar publisheddate_5idTemp = null;
        if(!publisheddate_5id.equals("")){
        java.text.DateFormat dateFormatpublisheddate40 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemppublisheddate40  = dateFormatpublisheddate40.parse(publisheddate_5id);
         publisheddate_5idTemp = new java.util.GregorianCalendar();
        publisheddate_5idTemp.setTime(dateTemppublisheddate40);
        }
        String isbn_6id=  request.getParameter("isbn42");
            java.lang.String isbn_6idTemp = null;
        if(!isbn_6id.equals("")){
         isbn_6idTemp  = isbn_6id;
        }
        String authors_7id=  request.getParameter("authors44");
            java.lang.String authors_7idTemp = null;
        if(!authors_7id.equals("")){
         authors_7idTemp  = authors_7id;
        }
        String title_8id=  request.getParameter("title46");
            java.lang.String title_8idTemp = null;
        if(!title_8id.equals("")){
         title_8idTemp  = title_8id;
        }
        String inlib_9id=  request.getParameter("inlib48");
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
        com.unilib.dao.Book getBookFromMarket13mtemp = sampleBookInformationServiceImplProxyid.getBookFromMarket(com1unilib1dao1Book_1id);
if(getBookFromMarket13mtemp == null){
%>
<%=getBookFromMarket13mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">publisher:</TD>
<TD>
<%
if(getBookFromMarket13mtemp != null){
java.lang.String typepublisher16 = getBookFromMarket13mtemp.getPublisher();
        String tempResultpublisher16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepublisher16));
        %>
        <%= tempResultpublisher16 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getBookFromMarket13mtemp != null){
java.lang.Integer typeid18 = getBookFromMarket13mtemp.getId();
        String tempResultid18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid18));
        %>
        <%= tempResultid18 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD>
<%
if(getBookFromMarket13mtemp != null){
java.lang.String typestatus20 = getBookFromMarket13mtemp.getStatus();
        String tempResultstatus20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestatus20));
        %>
        <%= tempResultstatus20 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">publisheddate:</TD>
<TD>
<%
if(getBookFromMarket13mtemp != null){
java.util.Calendar typepublisheddate22 = getBookFromMarket13mtemp.getPublisheddate();
        java.text.DateFormat dateFormatpublisheddate22 = java.text.DateFormat.getDateInstance();
        java.util.Date datepublisheddate22 = typepublisheddate22.getTime();
        String tempResultpublisheddate22 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatpublisheddate22.format(datepublisheddate22));
        %>
        <%= tempResultpublisheddate22 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">isbn:</TD>
<TD>
<%
if(getBookFromMarket13mtemp != null){
java.lang.String typeisbn24 = getBookFromMarket13mtemp.getIsbn();
        String tempResultisbn24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeisbn24));
        %>
        <%= tempResultisbn24 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">authors:</TD>
<TD>
<%
if(getBookFromMarket13mtemp != null){
java.lang.String typeauthors26 = getBookFromMarket13mtemp.getAuthors();
        String tempResultauthors26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeauthors26));
        %>
        <%= tempResultauthors26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">title:</TD>
<TD>
<%
if(getBookFromMarket13mtemp != null){
java.lang.String typetitle28 = getBookFromMarket13mtemp.getTitle();
        String tempResulttitle28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetitle28));
        %>
        <%= tempResulttitle28 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">inlib:</TD>
<TD>
<%
if(getBookFromMarket13mtemp != null){
java.lang.Boolean typeinlib30 = getBookFromMarket13mtemp.getInlib();
        String tempResultinlib30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeinlib30));
        %>
        <%= tempResultinlib30 %>
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