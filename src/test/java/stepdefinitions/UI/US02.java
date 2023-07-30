package stepdefinitions.UI;

import io.cucumber.java.en.*;
import org.junit.Assert;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
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
    LibraryPage librarypage= new LibraryPage();
    String libHomeUrl="https://www.diligentlibraries.com/library";
    List<WebElement>authorsItems= librarypage.authorsList;

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
        Driver.clickWithJS(librarypage.libraryLink);

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
        Assert.assertTrue(librarypage.categoriesLink.isDisplayed());}
    @When("Categories kutusuna tıklar")
    public void categories_kutusuna_tıklar() {
        librarypage.categoriesLink.click();
    }
    @When("açılır listeden herhangi bir seçeneğe tıklar")
    public void açılır_listeden_herhangi_bir_seçeneğe_tıklar() {
        Assert.assertEquals(libHomeUrl,Driver.getDriver().getCurrentUrl());
        List<WebElement> categoriesItems = librarypage.categoriesList;
        for (WebElement w : categoriesItems) {
            w.click();
            break;
        }
    }@Then("sonuçların ekranda listelendiğini doğrular")
    public void sonuçların_ekranda_listelendiğini_doğrular() {
        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains("cat="));
    }



    @When("Publisher kutusunu görür")
    public void publisher_kutusunu_görür() {

        Assert.assertTrue(librarypage.publishersLink.isDisplayed());
    }
    @When("Publishers kutusuna tıklar")
    public void publishers_kutusuna_tıklar() {
        librarypage.publishersLink.click();
    }
    @When("açılır pub. listeden herhangi bir seçeneğe tıklar")
    public void açılır_pub_listeden_herhangi_bir_seçeneğe_tıklar() {
        Assert.assertEquals(libHomeUrl,Driver.getDriver().getCurrentUrl());
        List<WebElement>publishersItems=librarypage.publishersList;
        for(WebElement w: publishersItems){
            w.click();
            break;
        }
    }@Then("sonuçların  ekranda listelendiğini doğrular")
    public void sonuçların_listelendiğini_doğrular() {
        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains("publisher="));
    }




    @When("Authors kutusunu görür")
    public void authors_kutusunu_görür() {
        librarypage=new LibraryPage();
        Assert.assertTrue(librarypage.authorsLink.isDisplayed());}

    @When("Authors kutusuna tıklar")
    public void authors_kutusuna_tıklar() {
        librarypage.authorsLink.click();}

    @When("açılır authors listeden herhangi bir seçeneğe tıklar")
    public void açılır_authors_listeden_herhangi_bir_seçeneğe_tıklar() {
        Assert.assertEquals(libHomeUrl,Driver.getDriver().getCurrentUrl());


        for(WebElement w: authorsItems){
            w.click();
            break;
        }
    }@Then("ekranda listelendiğini doğrular")
    public void ekranda_listelendiğini_doğrular() {
        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains("author="));
    }



    @When("herhangi bir filtre ile kitap listeler")
    public void herhangi_bir_filtre_ile_kitap_listeler() {
    librarypage=new LibraryPage();
    librarypage.authorsLink.click();
    for(WebElement w: authorsItems){
        if(w.getText().contains("Adolf Hitler")){
            w.click();
            break;
        }
    }
    Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains("Hitler"));
    }
    @Then("Kitapların ekranda sayfa numarası ile listelendiğini doğrular")
    public void kitapların_ekranda_sayfa_numarası_ile_listelendiğini_doğrular() {
        JavascriptExecutor jsExecutor = (JavascriptExecutor) Driver.getDriver();
        jsExecutor.executeScript("window.scrollTo(0, document.body.scrollHeight);");
        Assert.assertTrue(librarypage.paginationButton.isDisplayed());
    }
    }



