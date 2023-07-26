package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

import java.util.List;

public class LibraryPage {
    public LibraryPage(){
        PageFactory.initElements(Driver.getDriver(),this);}

    @FindBy(xpath = "//*[text()='Library']")
    public WebElement libraryLink;

    @FindBy(xpath = "(//button[@id='dropdown-basic-button'])[1]")
    public WebElement categoriesDrop;

    @FindBy(xpath = "//a[@class='dropdown-item']")
    public List<WebElement> categoriesList;




}
