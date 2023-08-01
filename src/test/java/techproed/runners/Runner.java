package techproed.runners;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


/*
Runner class'i testNG'deki .xml file kullanimindaki gibi istedigimiz scenario lari kullanacagimiz tag parametresi
sayesinde calistirabiliriz. Ve plugin parametresi ile raporlar alabiliriz

 */

@RunWith(Cucumber.class)//--Test calıştırıcı Notasyob
@CucumberOptions(features = "src/test/resources/features",
                glue = {"techproed/stepDefinition"},
                tags = "@tech",
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
