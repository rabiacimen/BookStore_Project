package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

import java.util.List;

public class LibraryPage {
    public LibraryPage(){
        PageFactory.initElements(Driver.getDriver(),this);}

    @FindBy(xpath = "//a[text()='Library']")
    public WebElement libraryLink;

    @FindBy(xpath = "(//button[@id='dropdown-basic-button'])[1]")
    public WebElement categoriesLink;

    @FindBy(xpath = "//a[@class='dropdown-item']")
    public List<WebElement> categoriesList;

    @FindBy(xpath = "(//button[@id='dropdown-basic-button'])[3]")
    public WebElement publishersLink;

    @FindBy(xpath = "//*[@class='dropdown-item']")
    public List<WebElement>publishersList;

    @FindBy(xpath = "(//button[@id='dropdown-basic-button'])[2]")
    public WebElement authorsLink;

    @FindBy(xpath = "//*[@class='dropdown-item']")
    public List<WebElement>authorsList;

    @FindBy(xpath = "//*[@class='pagination']")
    public WebElement paginationButton;




}
