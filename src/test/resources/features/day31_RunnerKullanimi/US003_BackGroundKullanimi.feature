@tech
Feature: US003 TechproEducation Sayfasi Testi


#Feature file içinde Scenario larda ortak kullanılan step'lerde Backgraund:
  #yapısını kullanabiliriz
#Her yolda önce buradaki step çalışır sonra scenario'daki stepler çalışmaya
  # devam eder

  Background: Kullanici TechProEducation Sayfasina Gider
    Given kullanici techpro sayfasina gider

  Scenario: TC01 Sayfada arama yapma
    Then arama kutusunda qa aratir
    And sayfa başliginin qa icerdigini test eder

  # Feature file da daha once olusturdugumuz bir method'u baska bir scenario larda tekrar olusturmadan kullanabiliriz
  # Yukaridaki ornekte sayfayi kapatir step'i ocon daha once amazonStepDefinition class'inda olusuturdugumuz methodu kullanabiliriz

  Scenario: TC02 Sayfada Arama Yapar
    Then arama kutusunda java aratir
    And sayfa başliginin java icerdigini test eder

  Scenario: TC03 Sayfada Arama Yapar
    Then arama kutusunda mobile aratir
    When cikan dropdown da mobile developer linkine tiklar
    And sayfa basliginin Mobile icerdigini test eder
    And sayfayi kapatir

 #Scenario larimizin tek bir browser da calismasini istersek ve
  # tum secenariolardan sonra browser'i kapatmak istersek
  #en son scenario'da close yapabiliriz
