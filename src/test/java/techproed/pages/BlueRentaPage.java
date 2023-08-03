package techproed.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import techproed.utilities.Driver;

public class BlueRentaPage {
    public BlueRentaPage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }
    @FindBy(xpath = "(//a)[1]")
    public WebElement loginButonu;

    @FindBy(xpath = "//*[@type='email']")
    public WebElement emailBox;
}
