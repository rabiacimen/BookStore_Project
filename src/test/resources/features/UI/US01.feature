@us01
Feature: US01


  Scenario: TC01
    Given HomePage sayfasina gidilir
    Given Search butonuna iki veya daha az karakter girilir
    Then Search butonunun aktif olmadigi assert edilir
    Then Close driver

  Scenario: TC02
    Given HomePage sayfasina gidilir
    Given Search butonuna uc karakter girilir
    Then Search butonunun aktif oldugu assert edilir
    Then Close driver

  Scenario: TC03
    Given HomePage sayfasina gidilir
    Given Search Book alanına otuz karakter girilir
    Then Search book alanina otuz karakter girilebildigi assert edilir
    Then Close driver

  Scenario: TC04
    Given HomePage sayfasina gidilir
    Given Search Book alanına otuz karakter  ustu girilir
    Then Search book alanina otuz karakter ustu  girilemedigi assert edilir
    Then Close driver

  Scenario: TC05
    Given HomePage sayfasina gidilir
    Then Sayfada sağ üst köşede Signin butonu oldugu assert edilir
    Then Register sayfalarına gitmek için butonlar bulundugu assert edilir
    Then Close driver

  Scenario: TC06
    Given HomePage sayfasina gidilir
    Then Feature Books alanında bes adet kitap görüntilendigi assert edilir
    Then Sağa sola oklarla kitaplar arasında geçiş yapıldigi assert edilir
    Then Close driver