<!DOCTYPE html>
<meta charset="UTF-8">
<%
    
    name=Request.form("username")
    pass=Request.form("password")
    

    set conn=server.CreateObject("ADODB.connection")
    conn.Provider="Microsoft.Jet.OLEDB.4.0"
    conn.Open Server.MapPath("htmldatabase1.mdb")
    set rs=Server.CreateObject("ADODB.recordset")

    query="select * from kullanici where nickname='" & name & "'and Sifre='" & pass & "'"
    
    rs.Open query,conn

    if not rs.EOF  then 
        Response.Write " <p> <b>Giris Onaylandi ! </b> <br> Anasayfaya Yonlendiriliyorsunuz </p>" %>
        <% Response.Redirect "./anasayfa_uye.asp" %>
        
    <%
    else
        response.Write "<p> Kullanici Adi Veya  Sifre Hatali ! Anasayfaya Yonlendiriliyorsunuz </p>" %> <meta http-equiv="refresh" content="3; url=anasayfa_misafir.asp"> 
        
        <%
    end if

%>