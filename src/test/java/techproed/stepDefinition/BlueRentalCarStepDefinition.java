package techproed.stepDefinition;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.Keys;
import techproed.pages.BlueRentaPage;
import techproed.utilities.ConfigReader;
import techproed.utilities.Driver;
import techproed.utilities.ReusableMethods;

import java.util.Map;

public class BlueRentalCarStepDefinition {

    BlueRentaPage blueRentaPage=new BlueRentaPage();

    @Then("kullanici login butonuna tiklar")
    public void kullaniciLoginButonunaTiklar() {
        blueRentaPage.loginButonu.click();
    }

    @And("kullanici verilen kullanici bilgileri ile login olur")
    public void kullaniciVerilenKullaniciBilgileriIleLoginOlur(DataTable data) {
      blueRentaPage.emailBox.sendKeys(data.row(1).get(0), Keys.TAB,data.row(1).get(1),Keys.ENTER);
        ReusableMethods.bekle(2);
        Driver.getDriver().navigate().back();
        ReusableMethods.bekle(2);
        blueRentaPage.emailBox.sendKeys(data.row(2).get(0),Keys.TAB,data.row(2).get(1),Keys.ENTER);
        ReusableMethods.bekle(2);
    }

    @And("kullanici verilen bilgiler ile login olur")
    public void kullaniciVerilenBilgilerIleLoginOlur(DataTable data) {
        for (Map<String,String> w: data.asMaps()) {
            blueRentaPage.emailBox.sendKeys(w.get("email"),Keys.TAB,w.get("password"),Keys.ENTER);
            ReusableMethods.bekle(2);
            Driver.getDriver().navigate().back();
            ReusableMethods.bekle(2);


        }
    }
}
