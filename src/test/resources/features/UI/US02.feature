@US02
Feature: US02

  Background: E_user_login
    Given kullanıcı başarılı bir şekilde login olur

  @activeSearch
  Scenario: TC01 Search Butonunun Aktif olması
    When search kutusuna 3 karakter girer
    Then kutunun aktif olduğunu doğrular

  @categoriesItems
  Scenario: TC02 Categories Filtresinin Aktif Olması
    When Categories kutusunu görür
    And Categories kutusuna tıklar
    And açılır listeden herhangi bir seçeneğe tıklar
    Then sonuçların ekranda listelendiğini doğrular

  @publishersItems
  Scenario:TC03 Publishers Filtresinin Aktif Olması
    When Publisher kutusunu görür
    And Publishers kutusuna tıklar
    And açılır pub. listeden herhangi bir seçeneğe tıklar
    Then sonuçların listelendiğini doğrular

  @authorsItems
  Scenario: TC04 Authors Filtresinin Aktif Olması
    When Authors kutusunu görür
    And Authors kutusuna tıklar
    And açılır authors listeden herhangi bir seçeneğe tıklar
    Then  ekranda listelendiğini doğrular

  @pagination
  Scenario: TC05 Kitapların sayfa numarası ile sıralanması
    When herhangi bir filtre ile kitap listeler
    Then Kitapların ekranda sayfa numarası ile listelendiğini doğrular




