
<!DOCTYPE HTML>
<html lang="tr">
<head>
  <meta charset="UTF-8">
  <title> KAYIT PANELİ</title>
  <link rel="stylesheet" href="./css_klasoru/uyeol.css">
</head>

<div id="login-box">
  <div class="left">
    <form action="./kaydol_islem.asp" method="POST">
    <h1>Kayıt Ol</h1>
    
    <input type="text" name="isim" placeholder="İsim" />
    <input type="text" name="soyisim" placeholder="Soyisim" />
    <input type="text" name="kullaniciadi" placeholder="Kullanıcı Adı" />
    <input type="text" name="email" placeholder="E-posta" />
    <input type="password" name="sifre" placeholder="Şifre" />
    
    
    <input type="submit" name="signup_submit"  value="Üye Ol" />
  </form>
</div>