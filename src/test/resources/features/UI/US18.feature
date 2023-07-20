Feature:US18
  Background: Admin olarak login olma ve Authors sayfasina ulasma durumu
    Given Admin belirtilen url'e gider
    Given Admin Signin butonuna tiklar
    Given Admin basarili bir sekilde giris yapar
    Given Admin ismin oldugu butona tiklar
    Given Admin  acilan listede Admin Panel'i secer
    Given Admin  sayfanin solundaki Authors butonuna tiklar


  Scenario:US18_TC01_Sistemde kayitli yazarlarin listelenmesi
    And Kullanici sayfada authors lari goruntuler

  Scenario:US18_TC02_Sayfa numaralarinin goruntulenmesi ve her sayfada on yazar listelenmesi durumu
    And Kullanici sayfada authors larin altinda sayfa numaralarini goruntuler
    And Kullanici 1. sayfada olduğunu gorur
    And Kullanici 2. sayfaya tiklar
    And Kullanici 3. sayfaya tiklar
    And Kullanici 4. sayfaya tiklar.
    And Kullanici 5. sayfaya tiklar

  Scenario:US18_TC03_Search butonun aktif edilmesi durumu
  And Kullanıcı author name kutucuğuna tıklar
  And Kullanıcı author name kutucuğuna en az uc karakter girer

  Scenario:US18_TC04_Search butonun aktif edilmemesi durumu
    And Kullanıcı author name kutucuğuna tıklar
    And Kullanıcı author name kutucuğuna en az iki karakter girer

  Scenario:US18_TC04_Search butonuna valid deger(3 karakter) girer ve yazarlarin goruntulendigini dogrular
    And Kullanıcı author name kutucuğuna tıklar
    And Kullanıcı author name kutucuğuna valid karakter girer
    And Kullanıcı search butonuna basar
    And Uygun yazar listesi görüntülenmelidir.

  Scenario:US18_TC05_Search butonuna invalid deger(2 karakter) girer ve yazarlarin goruntulendigini dogrular
    And Kullanıcı author name kutucuğuna tıklar
    And Kullanıcı author name kutucuğuna invalid karakter girer
    And Kullanıcı search butonuna basar
    And “No results in Authors table” mesajı görüntülenmelidir.

  Scenario:US18_TC06_Author edit sayfasına yonlendirilmesi durumu
    And Kullanıcı author name kutucuğuna tıklar
    And Kullanıcı author name kutucuğuna valid karakter girer
    And Kullanıcı search butonuna basar
    And Kullanıcı cikan yazar listesinden bir yazara tiklar
    And Kullanıcı acilan sayfanın Author Edit sayfasi oldugunu dogrular

  Scenario:US18_TC07_Add Author sayfasına yonlendirilmesi durumu
    And Kullanıcı Add New Author butonuna tıklar
    And Kullanıcı Add Aouthor sayfasinda oldugnu dogrular

