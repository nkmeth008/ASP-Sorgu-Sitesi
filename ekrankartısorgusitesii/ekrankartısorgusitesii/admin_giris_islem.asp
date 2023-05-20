<!DOCTYPE html>
<meta charset="UTF-8">
<%
    
    name=Request.form("username")
    pass=Request.form("password")
    

    set conn=server.CreateObject("ADODB.connection")
    conn.Provider="Microsoft.Jet.OLEDB.4.0"
    conn.Open Server.MapPath("htmldatabase1.mdb")
    set rs=Server.CreateObject("ADODB.recordset")

    query="select * from yonetici where nickname='" & name & "'and Sifre='" & pass & "'"
    
    rs.Open query,conn

    if not rs.EOF  then 
        %>
        <% Response.Redirect "./anasayfa_admin.asp" %>
        <%
    else
        response.Write "<p> Kullanici Adi ya da  Sifre Hatali ! </p>" %>      
        <%
    end if

%>