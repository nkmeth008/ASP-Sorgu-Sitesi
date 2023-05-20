<!DOCTYPE HTML>
<html>
<head>
<title>Bilgisayar Donanımı Bilgi Paneli</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css_klasoru/kullanıcıduzenleme_admin.css">
</head>
<body>
<header>
  <nav class="main-nav">
    <ul>
      <li>
        <ul>
          <li><a href="./anasayfa_admin.asp">Anasayfa</a></li>
          <li><a href="./kullaniciduzenlemeadmin.asp"class="active">Kullanıcı Tablosu</a></li>
          <li><a href="./gpu_ekleme_admin.asp">Ekran Kartı Tablo Veri Ekleme</a></li>
            <li><a href="./gputabloadmin.asp">Ekran Kartı Sorgu Tablosu</a></li>
            <li><a href="./anasayfa_misafir.asp">Çıkış Yap</a></li>
        </ul>
      </li>
    </ul>
  </nav>
</header>
<section id="video" class="home">
  <h1 style="color: rgb(255, 255, 255);"><b>Üye Düzenleme Alanı</b></h1>
  <%
  set conn=Server.CreateObject("ADODB.Connection")
  conn.Provider="Microsoft.Jet.OLEDB.4.0"
  conn.Open Server.MapPath("htmldatabase1.mdb")
  
  set rs=Server.CreateObject("ADODB.recordset")
  rs.Open "Select * from kullanici", conn
  %>
  
  <h2>Veri Tabani Listeleme</h2>
  <table border="1" width="100%">
  <tr>
  <%
  for each x in rs.Fields
    response.write("<th>" & ucase(x.name) & "</th>")
  next
  %>
  </tr>
  <% do until rs.EOF %>
  <tr>
  <form method="post" action="duzenle1.asp">
  <%
  for each x in rs.Fields
    if lcase(x.name)="numara" then%>
      <td>
      <input type="submit" name="TCNO" value="<%=x.value%>">
      </td>
    <%else%>
      <td><%Response.Write(x.value)%></td>
    <%end if
  next
  %>
  </form>
  <%rs.MoveNext%>
  </tr>
  <%
  loop
  conn.close
  %>
  </table>
</section>
</section>
<footer>
  <div class="copyright"><small>Copyright. Bütün Hakları Saklıdır | by <a target="_blank" rel="nofollow" href="https://www.instagram.com/furkanugurlu_/">Furkan Uğurlu</a>.</small></div>
</footer>
</body>
</html>
