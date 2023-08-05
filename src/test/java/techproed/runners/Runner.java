package techproed.runners;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


/*
Runner class'i testNG'deki .xml file kullanimindaki gibi istedigimiz scenario lari kullanacagimiz tag parametresi
sayesinde calistirabiliriz. Ve plugin parametresi ile raporlar alabiliriz

 */

@RunWith(Cucumber.class)//--Test calıştırıcı Notasyon
@CucumberOptions(plugin = {"pretty",
                           "html:target/default-cucumber-reports.html",
                           "json:target/json-reports/cucumber1.json",
                           "junit:target/xml-report/cucumber.xml",
                           "rerun:TestOutput/failed_scenario.txt"},
                           //rerun ile belirttiğimiz dosyada senaryolar tutulur.
        features = "src/test/resources/features",
        glue = {"techproed/stepDefinition"},
        tags = " @pozitif",
        dryRun = false//-->true seçersek scenarioları kontrol eder browser'ı çalıştırmaz
)

public class Runner {
}
/*
@CucumberOptions notasyonuna parametre olarak
          features--> package'in yolunu
          glue--> stepdefitinion package yolunu
          tag--> calistirmak istedigimiz scenariolari burda belirtiriz
     Scenarioların nerrede ve nasıl çalışacağı, hangi raporu kullanacağı ile alakalı
 seçenekleri bu notasyonda belirtiriz
 */
