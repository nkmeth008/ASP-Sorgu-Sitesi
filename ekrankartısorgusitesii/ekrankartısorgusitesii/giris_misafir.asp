<!DOCTYPE html>
<html lang="tr" >
<head>
  <meta charset="UTF-8">
  <title>F.UGURLU - EKRAN KARTI BİLGİ/SORGU OTOMASYONU</title>
  <link rel="stylesheet" href="./css_klasoru/normalize.min.css">
<link rel='stylesheet' href='./css_klasoru/bootstrap.min.css'>
<link rel="stylesheet" href="./css_klasoru/giris.css">

</head>
<body>

<div class="container main">
  <div class="row">
    <div class="col-md-6 col-md-offset-3 text-center title">
      <h1>ÜYE GİRİSİ</h1>
      <div class="bar"></div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 col-md-offset-3 form">
      <h2>GİRİS YAP</h2>
      <form action="./giris_islem.asp" method="POST">
      <input type="text" name="username" placeholder="Kullanıcı Adı"/><br/>
      <input type="password" name="password" placeholder="Şifre"/>
      <button class="btn btn-default login">Giris Yap</button>
      <h4>Kaydolmak İçin Tıklayınız<span><a class="btn btn-default signup" href="./uyeolma_misafir.asp">Kayıt Ol</a></span></h4>
    </form>
    <a class="btn btn-default login" href="./admin_giris.asp">Admin</a>  
  </div>
  </div>
</div>

  
</body>
</html>
