Feature:US16
  Background: Admin olarak login olma durumu
    Given Admin belirtilen url'e gider
    Given Admin Signin butonuna tiklar
    Given Admin basarili bir sekilde giris yapar
    Given Admin ismin oldugu butona tiklar


  Scenario:US16_TC01_Secili kitap bilgilerinin doluluk testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    When Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
    And Admin kitabın sağında bilgilerin bulunduğu panellerin varlığını doğrular.
    And Admin  secili kitaba dair bilgilerin dolu oldugunu dogrular

  Scenario:US16_TC02_Built-in ozelligi testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    When Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
    When Admin açılan sayfadaki "Built-In" özelliğinin "Built In" olduğunu teyit eder.
    And Admin seçilen kitabın altında  uyari mesajini görüntüler.

  Scenario:US16_TC03_Update islemi testi
  When Admin  sayfanin solundaki Books butonuna tiklar
  When Admin  acilan sayfadaki herhangi bir kitaba tiklar
  And Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
  Then Admin Built/in panelinin Not-Built oldugunu dogrular
  Then Admin"Book Category" panelini editler.
  Then Admin "update" butonuna tıklar.
  And Admin basarili bir sekilde update islemini gerceklestirir.

  Scenario:US16_TC04_Zorunlu olmayan panellerin testi
  When Admin  sayfanin solundaki Books butonuna tiklar
  When Admin  acilan sayfadaki bir kitaba kitaba tiklar
  When Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
  Then Admin Built/in panelinin Not-Built oldugunu dogrular
  Then Admin Page Count panelini bos birakır.
  And Admin Page Count panelini bos birakınca hata mesajı almaz.
  And Admin Publish Year panelini bos birakir.
  And Admin Publish year panelini boş bırakınca hata mesajı almaz.
  And Admin Page Count ve Publish Year panellerinin her ikisini bos birakir.
  And Admin Page Count ve Publish Year bölümünü boş bıraktığında hata mesajı almaz.

  Scenario:US16_TC05_Zorunlu olmayan panellerin testi
  When Admin  sayfanin solundaki Books butonuna tiklar
  When Admin  acilan sayfadaki bir kitaba kitaba tiklar
  When Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
  Then Admin Built/in panelinin Not-Built oldugunu dogrular
  And Admin Book Author,Book Publisher,Book Category,Featured,Active,Built-In panellerinin default degerler aldigini dogrular."
  And Admin "Name of Book" panelini boş bırakır.
  And Admin "Name of Book" paneli altında uyarı mesajı göründüğünü doğrular.
  And Admin "Shelf Code" panelini boş bırakır.
  And Admin "Shelf Code" paneli altında uyarı mesajı göründüğünü doğrular.
  And Admin "ISBN" panelini boş bırakır.
  And Admin "ISBN" paneli altında uyarı mesajı göründüğünü doğrular.

  Scenario:US16_TC06_Not-Build ozelligi testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
    And Admin Built/in panelinde Not-Built secili oldugunu dogrular

  Scenario:US16_TC07_Update isleminden sonra PopUp gorunurluk testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
    And Admin Built/in panelinde Not-Built secili oldugunu dogrular
    And Admin değişikliik yapmak istediği panele tıklar.
    And Admin seçilen panelde düzeltme yapar.
    And Admin sayfanın sağ altındaki "update" butonunun varlığını doğrular.
    And Admin "update" butonuna tıklar.
    And Admin sayfada popup mesajını görüntüler.

  Scenario:US16_TC08_Cancel butonu testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
    And Admin Built/in panelinde Not-Built secili oldugunu dogrular
    And Admin Book Edit sayfasinda hicbir degisiklik yapmadan cancel butonuna tiklar.
    And Admin cancel butonuna tikladiginda Books sayfasina dondugunu dogrular.

  Scenario:US16_TC09_Build/In secili oldugunda Delete butonunun varligi testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    When Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
    When Admin açılan sayfadaki "Built-In" özelliğinin "Built In" olduğunu teyit eder.
    And Admin Build-In secili iken delete butonunun olmadigini dogrular

  Scenario:US16_TC10_Delete butonu ve cancel butonu testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
    And Admin Built/in panelinde Not-Built secili oldugunu dogrular
    And Admin delete butonunun varligini dogrular
    And Admin delete butonuna tiklar
    And  Admin delete butonuna tikladiginda onay iletisim kutusunu goruntuler
    And Admin "Cancel" butonunun görünür olduğunu doğrular.
    And Admin cancel butonuna tiklar ve silme islemini iptal eder.

  Scenario:US16_TC11_Kitap silme testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.
    And Admin delete butonunun varligini dogrular
    And Admin delete butonuna tiklar
    And  Admin delete butonuna tikladiginda onay iletisim kutusunu goruntuler
    And Admin Ok butonuna tiklar
    And Admin silindigine dair popUp mesajini goruntuler.

  Scenario:US16_TC12_Silinen kitap testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    And Admin bulundugu sayfada arama kutusunun varligini dogrular
    And Admin arama kutusuna "Anna Karenina" yazar
    And Admin arama butonuna tiklar
    And Admin silinen kitabin sayfada bulunmadigini goruntuler

  Scenario:US16_TC13_Loan Form testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    And Admin "Son Ada" isimli kitaba tiklar.
    And Admin sayfada Loaning History bolumunun varligini dogrular
    And Admin Loaning History bolumunde bulunan userlardan birinin uzerine tiklar.
    And Admin Loan Form(Edit Loan) bolumunun varligini dogrular.

  Scenario:US16_TC14_Loan Form testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    And Admin "Nar Agaci" isimli kitaba tiklar.
    And Admin sayfada Loaning History bolumunde user bulunmadigini dogrular
    And Admin sayfada Loan Form olmadigini dogrular

  Scenario:US16_TC15  "set as Returned " veya iade tarihlerinin varligi testi
    When Admin  sayfanin solundaki Books butonuna tiklar
    And Admin "Son Ada" isimli kitaba tiklar.
    And Admin sayfada Loaning History bolumunun varligini dogrular
    And Admin Loaning History bolumunde Return Date başlığının altında "set as Returned" yazısının veya tarihlerin  varlığını doğrular."

  Scenario:US16_TC16_Loan Form "Set as returned" editi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin sayfada Loaning History bolumunun varligini dogrular
    And Admin sayfada  "set as Returned " yazisinin varligini dogrular
    And Admin  sayfadaki  "set as Returned " yazisina tiklar
    And Admin Loan Form(Edit Loan) bolumunun varligini dogrular.
    And Admin acilan formda Return Date'i alis tarihi ile teslim tarihi arasinda bir tarih girer
    And Admin update butonuna tiklar
    And Admin kitabi iade ettigine dair PopUp mesaji alir.

  Scenario:US16_TC17_Loan Form "Set as returned" negatif test
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin sayfada Loaning History bolumunun varligini dogrular
    And Admin sayfada  "set as Returned " yazisinin varligini dogrular
    And Admin  sayfadaki  "set as Returned " yazisina tiklar
    And Admin Loan Form(Edit Loan) bolumunun varligini dogrular.
    And Admin acilan formda Return Date'e alis tarihinden once bir tarih girer
    And Admin update butonuna tiklar
    And Admin yanlis tarih girdigine dair hata mesaji alir

  Scenario:US16_TC18_Loan Form "Set as returned" negatif test
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin sayfada Loaning History bolumunun varligini dogrular
    And Admin sayfada  "set as Returned " yazisinin varligini dogrular
    And Admin  sayfadaki  "set as Returned " yazisina tiklar
    And Admin Loan Form(Edit Loan) bolumunun varligini dogrular.
    And Admin acilan formda Return Date'e teslim tarihinden sonra bir tarih girer
    And Admin update butonuna tiklar
    And Admin gec teslim ettigine dair uyari mesaji alir

  Scenario:US16_TC19_"Book this book for below User" alaninin varligi testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin sayfada Loaning History bolumunun varligini dogrular
    And Admin  sayfada "set as Returned " yazisinin olmadigini dogrular.
    And Admin bulundugu sayfada "Book This book for below User" bolumunun varligini dogrular.

  Scenario:US16_TC20_User Search'te tek karakter testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin bulundugu sayfada "Book This book for below User" bolumunun varligini dogrular.
    And Admin Search User alanına tek karakter girer.
    And Admin Search butonuna tiklar
    And Admin Search User alaninin altinda uyari mesaji alir

  Scenario:US16_TC21_User Search'te iki karakter testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin bulundugu sayfada "Book This book for below User" bolumunun varligini dogrular.
    And Admin Search User alanına iki karakter girer.
    And Admin Search butonuna tiklar
    And Admin Member butonuna tiklar
    And Admin ilgili userlarin member dropdownuna geldigini dogrular
    And Admin Member alanindan istedigi useri secer

  Scenario:US16_TC22_User Search'te uc karakter testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin bulundugu sayfada "Book This book for below User" bolumunun varligini dogrular.
    And Admin Search User alanına uc karakter girer.
    And Admin Search butonuna tiklar
    And Admin Member butonuna tiklar
    And Admin ilgili userlarin member dropdownuna geldigini dogrular
    And Admin Member alanindan istedigi useri secer

  Scenario:US16_TC23_Notes alaninda sinir degerin altinda karakter girilebilmesi testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin bulundugu sayfada "Book This book for below User" bolumunun varligini dogrular.
    And Admin Search User alanına uc karakter girer.
    And Admin Search butonuna tiklar
    And Admin Member butonuna tiklar
    And Admin ilgili userlarin member dropdownuna geldigini dogrular
    And Admin Member alanindan istedigi useri secer
    And Admin Notes alanına sinir degerin altinda karakter girer.
    And Admin Notes kutusunun cercevesinin yesil oldugunu dogrular
    And Admin Book This Book butonuna tiklar
    And Admin kitabin ilgili usera atandigini dogrular

  Scenario:US16_TC24_Notes alaninda sinir degerde karakter girilebilmesi testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin bulundugu sayfada "Book This book for below User" bolumunun varligini dogrular.
    And Admin Search User alanına uc karakter girer.
    And Admin Search butonuna tiklar
    And Admin Member butonuna tiklar
    And Admin ilgili userlarin member dropdownuna geldigini dogrular
    And Admin Member alanindan istedigi useri secer
    And Admin Notes alanına sinir degerde karakter girer.
    And Admin Notes kutusunun cercevesinin yesil oldugunu gorur
    And Admin Book This Book butonuna tiklar
    And Admin kitabin ilgili usera atandigini dogrular

  Scenario:US16_TC25_Notes alaninda sinir degerin ustunde karakter girilebilmesi testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin bulundugu sayfada "Book This book for below User" bolumunun varligini dogrular.
    And Admin Search User alanına uc karakter girer.
    And Admin Search butonuna tiklar
    And Admin Member butonuna tiklar
    And Admin ilgili userlarin member dropdownuna geldigini dogrular
    And Admin Member alanindan istedigi useri secer
    And Admin Notes alanına sinir degerin ustunde karakter girer.
    And Admin Notes kutusunun cercevesinin kirmizi oldugunu gorur
    And Admin Book this Book butonuna tiklanmadigini dogrular

  Scenario:US16_TC26_Son teslim tarihinin atanmasi testi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    When Admin  acilan sayfadaki herhangi bir kitaba tiklar
    And Admin bulundugu sayfada "Book This book for below User" bolumunun varligini dogrular.
    And Admin Search User alanına uc karakter girer.
    And Admin Search butonuna tiklar
    And Admin Member butonuna tiklar
    And Admin ilgili userlarin member dropdownuna geldigini dogrular
    And Admin Member alanindan istedigi useri secer
    And Admin Notes alanına sinir degere uygun karakterde veri girer.
    And Admin Book this Book butonuna tiklar
    And Admin popUp mesajini gorur
    And Admin sayfayi yeniler
    And Admin Loaning History bolumunun varligini dogrular
    And Admin Expire Date basligi altinda teslim tarihinin otomatik olarak atandigini goruntuler






















