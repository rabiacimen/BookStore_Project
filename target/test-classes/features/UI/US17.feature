Feature:US17
  Background: Admin olarak login olma durumu
    Given Admin belirtilen url'e gider
    Given Admin Signin butonuna tiklar
    Given Admin basarili bir sekilde giris yapar
    Given Admin ismin oldugu butona tiklar


  Scenario:US17_TC01_"Add new book" için bilgilerin girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Name of Book alanina valid bir deger girer
    And Kullanici ISBN alanina valid bir deger girer
    And Kullanici Book Author alanindan secim yapar
    And Kullanici Book Publisher alanindan secim yapar
    And Kullanici Book Category alanindan secim yapar
    And Kullanici Shelf Code alanina valid bir deger girer
    And Kullanici Featured alaninda secim yapar
    And Kullanici Publish year alanina valid deger disinda bir girer
    And Kullanici Book Publisher alaninda valid deger disinda bir deger secer

  Scenario:US17_TC02_"Add new book" için Select image butonu ile dış ortamdan resim yüklenebilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Select image butonuna tiklar
    And Kullanici yukleyecegi resmi secer
    And Kullanici dis ortamdan resim yukler

  Scenario:US17_TC03_Kitap ismi alaninin bos birakilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Name of Book alanini bos birakir
    And Kullanici name of book alanini altinda "Please enter name of book" uyarisini gorur

  Scenario:US17_TC04_Kitap ismi alanina tek karakter girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Name of Book alanina bir karakter girer
    And Kullanici name of book alanini altinda "Too short" uyarisini gorur

  Scenario:US17_TC05_Kitap ismi alanina iki karakter girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Name of Book alanina iki karakter girer
    And Kullanici name of book alanini altinda yesil tik isareti gorur

  Scenario:US17_TC06_Kitap ismi alanina seksen karakter girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Name of Book alanina seksen karakter girer
    And Kullanici name of book alanini altinda yesil tik isareti gorur

  Scenario:US17_TC07_Kitap ismi alanina seksenbir karakter girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Name of Book alanina seksenbir karakter girer
    And Kullanici name of book alanini altinda "Too long" uyarisini gorebilmeli

  Scenario:US17_TC08_ISBN alaninin bos birakilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici ISBN alanini bos birakir
    And Kullanici ISBN alaninin altinda "Please enter a valid ISBN number" hatasini gorur

  Scenario:US17_TC09_ISBN alaninin bos birakilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici ISBN alanini bos birakir
    And Kullanici ISBN alaninin altinda "Please enter a valid ISBN number" hatasini gorur

  Scenario:US17_TC10_ISBN alanina 16 karakter girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici ISBN alaninina "123-45-67890-12-" girer
    And Kullanici ISBN alaninin altinda "Please enter a valid ISBN number" hatasini gorur

  Scenario:US17_TC11_ISBN alanina 17 karakter girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici ISBN alaninina "123-45-67890-12-3" girer
    And Kullanici ISBN ISBN alaninda yesil tik gorebilmeli

  Scenario:US17_TC12_Shelf Code alaninin bos birakilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Shelf Code alanini bos birakir
    And kullanici Shelf code alaninin altinda "Please use Upper Case for first letters" hatasini gorur

  Scenario:US17_TC13_Shelf Code alanina valid degerlerde karakter girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Shelf Code alanina "SA-999" bos birakir
    And kullanici Shelf code alanininda yesil tik gorur

  Scenario:US17_TC14_Shelf Code alanina dort karakter girilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    And Kullanici Shelf Code alanina "SA-99" bos birakir
    And kullanici Shelf code alaninin altinda Shelf code alaninin altinda "Please use Upper Case for first letters" uyarisini gorur

  Scenario:US17_TC15_Dropdown Menu aracılığıyla Book Author seceneginin secilebilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    Then Kullanici Book Author kutucuguna tiklar
    Then Kullanici dropdown aracilgiyle valid bir deger secer
    And Kullanici Valid deger secince yesil tik gorur


  Scenario:US17_TC15_Dropdown Menu aracılığıyla Publisher seceneginin secilebilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    Then Kullanici Publisher kutucuguna tiklar
    Then Kullanici dropdown aracilgiyle valid bir deger secer
    And Kullanici Valid deger secince yesil tik gorur

  Scenario:US17_TC16_Dropdown Menu aracılığıyla Category seceneginin secilebilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    Then Kullanici Category kutucuguna tiklar
    Then Kullanici dropdown aracilgiyle valid bir deger secer
    And Kullanici Valid deger secince yesil tik gorur

  Scenario:US17_TC17_Dropdown Menu aracılığıyla  Featured seceneginin secilebilmesi durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    Then Kullanici Featured kutucuguna tiklar
    Then Kullanici dropdown aracilgiyle valid bir deger secer
    And Kullanici Valid deger secince secince yesil tik gorur

  Scenario:US17_TC18_cancel secenegi ile islemden cikma durumu
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    Then Kullanici Name of Book alanina valid bir deger girer
    Then Kullanici ISBN alanina valid bir deger girer
    Then Kullanici Book Author alanindan secim yapar
    Then Kullanici Book Publisher alanindan secim yapar
    Then Kullanici Book Category alanindan secim yapar
    Then Kullanici Shelf Code alanina valid bir deger girer
    Then Kullanici Featured alaninda secim yapar
    Then Kullanici Select image butonuna tiklar
    Then Kullanici yukleyecegi resmi secer
    Then Kullanici dis ortamdan resim yukler
    And Kullanici Cancel butonuna basar
    And Kullanici islemden ciktigini ve Books sayfasina dondugunu dogrular


  Scenario:US17_TC19_kitap ekleme islemi bitince Books sayfasinda kitabın goruntulenmesi
    When Admin  acilan listede Admin Panel'i secer
    When Admin  sayfanin solundaki Books butonuna tiklar
    Then Kullanici Add New Book butonuna tiklar
    Then Kullanici Name of Book alanina valid bir deger girer
    Then Kullanici ISBN alanina valid bir deger girer
    Then Kullanici Book Author alanindan secim yapar
    Then Kullanici Book Publisher alanindan secim yapar
    Then Kullanici Book Category alanindan secim yapar
    Then Kullanici Shelf Code alanina valid bir deger girer
    Then Kullanici Featured alaninda secim yapar
    Then Kullanici Select image butonuna tiklar
    Then Kullanici yukleyecegi resmi secer
    Then Kullanici dis ortamdan resim yukler
    And Kullanici create butonuna basar
    And Kullanici islemin basarili olduguna dair popup mesajini goruntuler
    And Kullanici Books sayfasinda ekledigi kitabı goruntuler







