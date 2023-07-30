@us01
Feature: US01


  Scenario: TC01
    Given Search butonuna iki veya daha az karakter girilir
    Then Search butonunun aktif olmadigi assert edilir

  Scenario: TC02
    Given Search butonuna uc karakter girilir
    Then Search butonunun aktif oldugu assert edilir

  Scenario: TC03
    Given Search Book alanına otuz karakter girilir
    Then Search book alanina otuz karakter girilebildigi assert edilir

  Scenario: TC04
    Given Search Book alanına otuz karakter  ustu girilir
    Then Search book alanina otuz karakter ustu  girilemedigi assert edilir

  Scenario: TC05
    Given HomePage sayfasina gidilir
    Then Sayfada sağ üst köşede Signin butonu oldugu assert edilir
    Then Register sayfalarına gitmek için butonlar bulundugu assert edilir

  Scenario: TC06
    Given HomePage sayfasina gidilir
    Then Feature Books alanında bes adet kitap görüntilendigi assert edilir
    Then Sağa sola oklarla kitaplar arasında geçiş yapıldigi assert edilir