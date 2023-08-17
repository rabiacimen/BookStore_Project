package stepdefinitions.UI;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import pages.HomePage;
import pages.LoginPage;
import utilities.ConfigReader;
import utilities.Driver;

public class US01 {

/*
    AC1
    Search Book alanına en az 3 karakter girildiğinde Search butonu görünür olmalıdır.
    AC2
Search Book alanına en fazla 30 karakter girilebilmelidir.
AC3
Sayfada sağ üst köşede Signin ve Register sayfalarına gitmek için butonlar bulunmalıdır.
AC4
Feature Books alanında 5 adet kitap görüntilenmeli ve sağa sola oklarla kitaplar arasında geçiş yapılmalıdır.
AC5
 */
HomePage homePage=new HomePage();
    @Given("Search butonuna iki veya daha az karakter girilir")
    public void search_butonuna_iki_veya_daha_az_karakter_girilir() {

        HomePage homePage= new HomePage();
        Driver.getDriver().get(ConfigReader.getProperty("url"));
      homePage.searchButton.sendKeys("ab");

    }

    @Then("Search butonunun aktif olmadigi assert edilir")
    public void search_butonunun_aktif_olmadigi_assert_edilir() {
        Assert.assertFalse( homePage.searchButton.isDisplayed());

    }

    @Given("Search butonuna uc karakter girilir")
    public void search_butonuna_uc_karakter_girilir() {
        HomePage homePage= new HomePage();
        Driver.getDriver().get(ConfigReader.getProperty("url"));
        homePage.searchButton.sendKeys("abc");

    }

    @Then("Search butonunun aktif oldugu assert edilir")
    public void search_butonunun_aktif_oldugu_assert_edilir() {

    }


    @Given("Search Book alanına otuz karakter girilir")
    public void search_book_alanına_karakter_girilir(Integer int1) {
        HomePage homePage= new HomePage();
        Driver.getDriver().get(ConfigReader.getProperty("url"));
        homePage.searchButton.sendKeys("abcdefvcdfresdxcvfrtgbnhyujmki");

    }

    @Then("Search book alanina otuz karakter girilebildigi assert edilir")
    public void search_book_alanina_karakter_girilebildigi_assert_edilir(Integer int1) {

    }

    @Given("Search Book alanına otuz karakter  ustu girilir")
    public void search_book_alanına_karakter_ustu_girilir(Integer int1) {

    }

    @Then("Search book alanina otuz karakter ustu  girilemedigi assert edilir")
    public void search_book_alanina_karakter_ustu_girilemedigi_assert_edilir(Integer int1) {

    }


    @Then("Sayfada sağ üst köşede Signin butonu oldugu assert edilir")
    public void sayfada_sağ_üst_köşede_signin_butonu_oldugu_assert_edilir() {

    }

    @Then("Register sayfalarına gitmek için butonlar bulundugu assert edilir")
    public void register_sayfalarına_gitmek_için_butonlar_bulundugu_assert_edilir() {

    }


    @Given("HomePage sayfasina gidilir")
    public void home_page_sayfasina_gidilir() {

    }

    @Then("Feature Books alanında bes adet kitap görüntilendigi assert edilir")
    public void feature_books_alanında_adet_kitap_görüntilendigi_assert_edilir(Integer int1) {

    }

        @Then("Sağa sola oklarla kitaplar arasında geçiş yapıldigi assert edilir")
        public void sağa_sola_oklarla_kitaplar_arasında_geçiş_yapıldigi_assert_edilir () {

        }


    }
