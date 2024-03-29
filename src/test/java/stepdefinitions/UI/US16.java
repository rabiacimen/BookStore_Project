package stepdefinitions.UI;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.BooksPage;
import pages.DashboardPage;
import pages.HomePage;
import pages.LoginPage;
import utilities.ConfigReader;
import utilities.Driver;
import utilities.ReusableMethods;

public class US16 {

    LoginPage loginPage = new LoginPage();
    HomePage homePage = new HomePage();
    DashboardPage dashboardPage = new DashboardPage();
    BooksPage booksPage = new BooksPage();
    @Given("Admin belirtilen url'e gider")
    public void admin_belirtilen_url_e_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("url"));

    }

    @Given("Admin Signin butonuna tiklar")
    public void admin_signin_butonuna_tiklar() {
        loginPage.signin_button.click();

    }

    @Given("Admin basarili bir sekilde giris yapar")
    public void admin_basarili_bir_sekilde_giris_yapar() {
        ReusableMethods.login("rabiacmn@gmail.com","Rabia3545*");

    }

    @Given("Admin ismin oldugu butona tiklar")
    public void admin_ismin_oldugu_butona_tiklar() {
        homePage.admin_name_dropdown.click();

    }

    @When("Admin  acilan listede Admin Panel'i secer")
    public void admin_acilan_listede_admin_panel_i_secer() {
        homePage.admin_panel.click();

    }

    @When("Admin  sayfanin solundaki Books butonuna tiklar")
    public void admin_sayfanin_solundaki_books_butonuna_tiklar() {
        dashboardPage.dashboard_books_link.click();

    }

    @When("Admin  acilan sayfadaki herhangi bir kitaba tiklar")
    public void admin_acilan_sayfadaki_herhangi_bir_kitaba_tiklar() {
        booksPage.books_a.click();

    }

    @When("Admin açılan sayfanın Book Edit sayfası olduğunu doğrular.")
    public void admin_açılan_sayfanın_book_edit_sayfası_olduğunu_doğrular() {
        Assert.assertTrue(booksPage.book_edit_page.isDisplayed());

    }

    @When("Admin kitabın sağında bilgilerin bulunduğu panellerin varlığını doğrular.")
    public void admin_kitabın_sağında_bilgilerin_bulunduğu_panellerin_varlığını_doğrular() {
        Assert.assertTrue(booksPage.kitap_bilgi_paneli.isDisplayed());
    }

    @When("Admin  secili kitaba dair bilgilerin dolu oldugunu dogrular")
    public void admin_secili_kitaba_dair_bilgilerin_dolu_oldugunu_dogrular() {
        Assert.assertEquals(1984,booksPage.name_of_book.getText());
        Assert.assertEquals(1984,booksPage.name_of_book.getText());
        Assert.assertEquals(1984,booksPage.name_of_book.getText());
        Assert.assertEquals(1984,booksPage.name_of_book.getText());
        Assert.assertEquals(1984,booksPage.name_of_book.getText());
        Assert.assertEquals(1984,booksPage.name_of_book.getText());
        Assert.assertEquals(1984,booksPage.name_of_book.getText());
        Assert.assertEquals(1984,booksPage.name_of_book.getText());




    }


    @When("Admin açılan sayfadaki Built-In özelliğinin Built In olduğunu teyit eder.")
    public void adminAçılanSayfadakiBuiltInÖzelliğininBuiltInOlduğunuTeyitEder() {
        
    }
}
