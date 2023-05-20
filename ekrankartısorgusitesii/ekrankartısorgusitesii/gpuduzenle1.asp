<html>
<body>

<h2>GPU Veri Guncelleme Ve Silme Tablosu</h2>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("htmldatabase1.mdb")

alper=Request.Form("TCNO")

if Request.form("Ad")="" then
  set rs=Server.CreateObject("ADODB.Recordset")
  rs.open "SELECT * FROM ekrankartlarihtml WHERE numara='" & alper & "'",conn
  %>
  <form method="post" action="gpuduzenle2.asp">
  <table>
  <%for each x in rs.Fields%>
  <tr>
  <td><%=x.name%></td>
  <td><input name="<%=x.name%>" value="<%=x.value%>"></td>
  <%next%>
  </tr>
  </table>
  <br><br>
  <input type="submit" name ="islem1" value="Kaydi Guncelle">
  <input type="submit" name ="islem1" value="Kaydi Sil">
  </form>

  
<%
else

end if
conn.close
%>

</body>
</html>