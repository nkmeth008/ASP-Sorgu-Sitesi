<html>
<body>

<h2>GPU Veri Güncelleme Ve Silme Tablosu</h2>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("htmldatabase1.mdb")


if (Request.Form("islem1") = "Kaydi Sil") Then
tc=Request.Form("numara")

  sql="DELETE FROM ekrankartlarihtml"
  sql=sql & " WHERE numara='" & tc & "'"
  on error resume next
  conn.Execute sql
  if err<>0 then
    response.write("Silme işlemi gerçekleşmedi")
  else
    response.write("Kayıt " & tc & " Silme İslemi Basarili ! Menuye Yonlendiriliyorsunuz!") %> <meta http-equiv="refresh" content="3; url=gputabloadmin.asp">
  <%
    end if
  else
  

tc = Request.Form("numara")
  
  sql="UPDATE ekrankartlarihtml SET "
  sql=sql & "Model='" & Request.Form("Model") & "',"
  sql=sql & "Marka='" & Request.Form("Marka") & "',"
  sql=sql & "Firma='" & Request.Form("Firma") & "',"
  sql=sql & "Bellek='" & Request.Form("Bellek") & "',"
  sql=sql & "Birim='" & Request.Form("Birim") & "',"
  sql=sql & "Durumu='" & Request.Form("Durumu") & "',"
  sql=sql & "Fiyat='" & Request.Form("Fiyat") & "' ,"
  sql=sql & " WHERE numara='" & tc & "'"

  on error resume next
  conn.Execute sql
  if err<>0 then
  response.write(sql)
    response.write("Guncelleme yapilamadi! Menuye Yonlendiriliyorsunuz") %> <meta http-equiv="refresh" content="3; url=gputabloadmin.asp">
    <%
  
  else
    
  response.write("Kayit No = " & Request.Form("numara") & " Guncelleme Basarılı ! Menuye Yonlendiriliyorsunuz") %>  <meta http-equiv="refresh" content="3; url=gputabloadmin.asp"> 
    <%
  end if
  end if 
conn.close
%>

</body>
</html>