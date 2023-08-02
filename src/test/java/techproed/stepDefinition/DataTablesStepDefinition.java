package techproed.stepDefinition;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import techproed.pages.DataTablesPage;

public class DataTablesStepDefinition {
    DataTablesPage dataTablesPage=new DataTablesPage();
    @Then("kullanici new butonuna tiklar")
    public void kullaniciNewButonunaTiklar() {
    dataTablesPage.newButonu.click();
    }


    @And("cikan pencerede verilen bilgiler girilir{string},{string},{string},{string},{string},{string},{string}")
    public void cikanPenceredeVerilenBilgilerGirilir(String name, String lastName, String position, String office, String extention, String data, String salary) {
        dataTablesPage.firstName.sendKeys(name,Keys.TAB,lastName,Keys.TAB,position,Keys.TAB,office,Keys.TAB,extention,Keys.TAB,data,Keys.TAB,salary,Keys.TAB);
    }

    @And("kullanici create butonuna tiklar")
    public void kullaniciCreateButonunaTiklar() {
        dataTablesPage.createButton.click();

    }

    @And("kullanici searc bolumune {string} bilgisini girer")
    public void kullaniciSearcBolumuneBilgisiniGirer(String str) {
        dataTablesPage.search.sendKeys(str);
    }

    @And("kullanici {string} ile basarili giris yapildigini dogrular")
    public void kullaniciIleBasariliGirisYapildiginiDogrular(String name) {
       Assert.assertTrue(dataTablesPage.verify.getText().contains(name));
    }
}
