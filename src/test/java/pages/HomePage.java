package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class HomePage {
    public HomePage(){
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(id = "dropdown-basic")
    public WebElement admin_name_dropdown;

    @FindBy(xpath = "//a[contains(text(),'Admin Panel')]")
    public WebElement admin_panel;

    @FindBy(xpath = "//input[@placeholder='Name or Author or ISBN or Publisher']")
    public WebElement searchbox;

    @FindBy(xpath = "//button[@value='Submit']")
    public WebElement searchButton;





}
