<html>
<body>
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("htmldatabase1.mdb")

sql="INSERT INTO ekrankartlarihtml (model,marka,firma,bellek,birim,fiyat)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("mod") & "',"
sql=sql & "'" & Request.Form("mark") & "',"
sql=sql & "'" & Request.Form("u_firma") & "',"
sql=sql & "'" & Request.Form("bell") & "',"
sql=sql & "'" & Request.Form("graf_bim") & "',"
sql=sql & "'" & Request.Form("fyt") & "')"

on error resume next
conn.Execute sql,recaffected
if err<>0 then
Response.Write(sql)

  Response.Write("Kayit Yapilamadi!")
else
  Response.Write("<p>" & recaffected & " Kayıt Basarili! Menuye Yonlendiriliyorsunuz</p>") %> <meta http-equiv="refresh" content="3; url=gpu_ekleme_admin.asp">
<%
  end if
conn.close
%>

</body>
</html>