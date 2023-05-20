<!DOCTYPE HTML>
<html>
<head>
<title>Bilgisayar Donanımı Bilgi Paneliiiiii</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css_klasoru/gpuduzenleme_admin.css">
</head>
<body>
<header>
  <nav class="main-nav">
    <ul>
      <li>
        <ul>
          <li><a href="./anasayfa_admin.asp">Anasayfa</a></li>
          <li><a href="./kullaniciduzenlemeadmin.asp">Kullanıcı Tablosu</a></li>
            <li><a href="./gpu_ekleme_admin.asp"class="active">Ekran Kartı Tablo Veri Ekleme</a></li>
            <li><a href="./gputabloadmin.asp">Ekran Kartı Sorgu Tablosu</a></li>
            <li><a href="./anasayfa_misafir.asp">Çıkış Yap</a></li>
        </ul>
      </li>
    </ul>
  </nav>
</header>
<section id="video" class="home">
  <h1 style="color: rgb(255, 255, 255);"><b>Ekran Kartı Tablo Düzenleme Alanı </b></h1>

</section>
<section id="main-content">

  <form method="post" action="./kaydetme_query.asp">
    <table>
    <tr>
    <td>Model:</td>
    <td><input name="mod"></td>
    </tr><tr>
    <td>Marka:</td>
    <td><input name="mark"></td>
    </tr><tr>
    <td>Üretici Firma:</td>
    <td><input name="u_firma"></td>
    </tr><tr>
    <td>Bellek:</td>
    <td><input name="bell"></td>
  </tr><tr>
    <td>Grafik Birimi:</td>
    <td><input name="graf_bim"></td>
  </tr><tr>
    <td>Üretim Durumu:</td>
    <td><input type="checkbox" name="durum" value="Evet"></td>
  </tr><tr>
    <td>Fiyat:</td>
    <td><input name="fyt"></td>
    </tr>
    </table>
    <br><br>
    <input type="submit" value="Yeni Ekle">
    <input type="reset" value="İptal">
    </form>

</section>
<footer>

  
  <div class="copyright"><small>Copyright. Bütün Hakları Saklıdır | by <a target="_blank" rel="nofollow" href="https://www.instagram.com/furkanugurlu_/">Furkan Uğurlu</a>.</small></div>
</footer>
</body>
</html>
