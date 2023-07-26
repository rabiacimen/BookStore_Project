package stepdefinitions.UI;

import io.cucumber.java.en.*;
import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import pages.HomePage;
import pages.LibraryPage;
import pages.LoginPage;
import utilities.ConfigReader;
import utilities.Driver;
import utilities.ReusableMethods;

import java.util.ArrayList;
import java.util.List;

public class US02 {

    LoginPage loginpage;
    HomePage homepage;
    LibraryPage librarypage;
    Actions action = new Actions(Driver.getDriver());

    @Given("kullanıcı başarılı bir şekilde login olur")
    public void kullanıcı_başarılı_bir_şekilde_login_olur() {
        loginpage = new LoginPage();
        homepage= new HomePage();
        Driver.getDriver().get(ConfigReader.getProperty("url"));
        loginpage.signin_button.click();
        loginpage.login_email_address.sendKeys("bookstore35@gmail.com");
        loginpage.login_password.sendKeys("Book35*");
        loginpage.login_submit.click();
        Assert.assertTrue(homepage.admin_name_dropdown.isDisplayed());

    }
    @When("search kutusuna {int} karakter girer")
    public void search_kutusuna_karakter_girer(Integer int1) {

        Assert.assertFalse(homepage.searchButton.isDisplayed());
        homepage.searchbox.sendKeys("roman");

    }@Then("kutunun aktif olduğunu doğrular")
    public void kutunun_aktif_olduğunu_doğrular() {
       Assert.assertTrue(homepage.searchButton.isDisplayed());
    }


    @When("Categories kutusunu görür")
    public void categories_kutusunu_görür() {
        librarypage=new LibraryPage();
        Driver.clickWithJS(librarypage.libraryLink);
        Assert.assertTrue(librarypage.categoriesDrop.isDisplayed());}
    @When("Categories kutusuna tıklar")
    public void categories_kutusuna_tıklar() {
        librarypage.categoriesDrop.click();
    }
    @When("açılır listeden herhangi bir seçeneğe tıklar")
    public void açılır_listeden_herhangi_bir_seçeneğe_tıklar() {
        Assert.assertEquals("https://www.diligentlibraries.com/library",Driver.getDriver().getCurrentUrl());
        List<WebElement> categoriesItems = librarypage.categoriesList;
        for (WebElement w : categoriesItems) {
            w.click();
            break;
        }
    }
    @Then("sonuçların ekranda listelendiğini doğrular")
    public void sonuçların_ekranda_listelendiğini_doğrular() {
        String cat="cat=";
        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains(cat));
    }




}
