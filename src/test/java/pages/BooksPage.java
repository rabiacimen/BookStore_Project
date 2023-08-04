package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class BooksPage {
    public BooksPage(){
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(xpath = "//h2[text()='1984']")
    public WebElement books_a;

    @FindBy(xpath = "//span[contains(text(),'Book Edit')]")
    public WebElement book_edit_page;

    @FindBy(xpath = "//fieldset")
    public WebElement kitap_bilgi_paneli;

    @FindBy (xpath = "//*[@name='name']")
    public WebElement name_of_book;

    @FindBy (xpath = "//*[@name='isbn']")
    public WebElement isbn_box;

    @FindBy (xpath = "//input[@value='123-45-36568-79-8']")
    public WebElement isbn_value;

    @FindBy (xpath = "(//input[@type='number'])[1]")
    public WebElement page_count_box;

    @FindBy (xpath = "//div[@class='invalid-feedback']")
    public WebElement invalid_feedback;

    @FindBy (xpath = "//*[@name='publishDate']")
    public WebElement publish_date_box;

    @FindBy (xpath = "//*[@name='publishDate']")
    public WebElement publish_year_box;

    @FindBy (xpath = "//*[@name='bookAuthor']")
    public WebElement book_author_box;

    @FindBy (xpath = "//*[@name='bookPublisher']")
    public WebElement book_publisher_box;

    @FindBy (xpath = "//*[@name='bookCategory']")
    public WebElement book_category_box;

    @FindBy (xpath = "//*[@name='shelfCode']")
    public WebElement shelf_code_box;

    @FindBy (xpath = "//*[@name='featured']")
    public WebElement featured_box;

    @FindBy (xpath = "//*[@name='active']")
    public WebElement active_box;

    @FindBy (xpath = "(//*[@class='form-select'])[6]")
    public WebElement built_in_box;

    @FindBy (xpath = "(//*[@type='button'])[3]")
    public WebElement cancel_button;

    @FindBy (xpath = "(//*[@type='button'])[4]")
    public WebElement delete_button;

    @FindBy (xpath = "(//*[@class='btn btn-primary'])[2]")
    public WebElement update_button;






}
