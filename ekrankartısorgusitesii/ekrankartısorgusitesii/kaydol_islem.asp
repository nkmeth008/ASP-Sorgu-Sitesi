<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("htmldatabase1.mdb")

sql="INSERT INTO kullanici (isim,soyisim,nickname,eposta,Sifre)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("isim") & "',"
sql=sql & "'" & Request.Form("soyisim") & "',"
sql=sql & "'" & Request.Form("kullaniciadi") & "',"
sql=sql & "'" & Request.Form("email") & "',"
sql=sql & "'" & Request.Form("sifre") & "')"

on error resume next
conn.Execute sql,recaffected
if err<>0 then
Response.Write(sql)

  Response.Write("Kayit Yapilamadi !")
else
  Response.Write("<p>" & recaffected & " Kayit Basarili Giris Paneline Yonlendiriliyorsunuz ! </p>") %> <meta http-equiv="refresh" content="3; url=giris_misafir.asp"> 
  <%
end if
conn.close
%>

</body>
</html>