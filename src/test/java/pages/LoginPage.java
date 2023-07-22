package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class LoginPage {

    public LoginPage(){
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(xpath = "//a[contains(text(),'Signin')]")
    public WebElement signin_button;

    @FindBy(xpath = "(//*[@name='email'])[1]")
    public WebElement login_email_address;

    @FindBy(xpath = "(//*[@name='password'])[1]")
    public WebElement login_password;

    @FindBy(xpath = "(//*[@type='submit'])[1]")
    public WebElement login_submit;









}
