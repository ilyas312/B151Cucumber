package techproed.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)//--Test calıştırıcı Notasyon
@CucumberOptions(plugin = {"pretty",
        "html:target/default-cucumber-reports.html",
        "json:target/json-reports/cucumber2.json",
        "junit:target/xml-report/cucumber.xml",
        "rerun:TestOutput/failed_scenario.txt"},
        //rerun ile belirttiğimiz dosyada senaryolar tutulur.
        features = "src/test/resources/features",
        glue = {"techproed/stepDefinition"},
        tags = " @negatif",
        dryRun = false//-->true seçersek scenarioları kontrol eder browser'ı çalıştırmaz
)
public class Runner1 {
}
