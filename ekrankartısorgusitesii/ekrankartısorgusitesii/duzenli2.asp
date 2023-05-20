<html>
<body>
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<h2>Kullanici Veri Duzenleme Ve Silme Alani</h2>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("htmldatabase1.mdb")


if (Request.Form("islem") = "Kaydi Sil") Then
tc=Request.Form("numara")

  sql="DELETE FROM kullanici"
  sql=sql & " WHERE numara='" & tc & "'"
  on error resume next
  conn.Execute sql
  if err<>0 then
    response.write("Silme islemi gerceklesmedi")
  else
    response.write("Kayıt " & tc & " silindi! Menuye Yonlendiriliyorsunuz") %> <meta http-equiv="refresh" content="3; url=kullaniciduzenlemeadmin.asp">
  <%
    end if
  else
  

tc = Request.Form("numara")
  
  sql="UPDATE kullanici SET "
  sql=sql & "isim='" & Request.Form("isim") & "',"
  sql=sql & "soyisim='" & Request.Form("soyisim") & "',"
  sql=sql & "nickname='" & Request.Form("nickname") & "' "
  sql=sql & " WHERE numara='" & tc & "'"

  on error resume next
  conn.Execute sql
  if err<>0 then
    response.write("Guncelleme yapilamadi!")
  else
    
  response.write("Kayit No = " & Request.Form("numara") & " Guncelleme Basarılı ! Menuye Yonlendiriliyorsunuz") %>  <meta http-equiv="refresh" content="3; url=kullaniciduzenlemeadmin.asp"> 
    <%
  end if
  end if 
conn.close
%>

</body>
</html>