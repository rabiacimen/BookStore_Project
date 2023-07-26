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
