Feature: US001 Google Testi

  @arac1
  Scenario: TC01 Arama kutusunda volvo aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda "volvo" aratir
    And kullanici 3 saniye bekler
    And  google sayfasinda basligin "ford" icerdigini test eder
    And sayfayi kapatir

    @arac2
  Scenario: TC02 Arama kutusunda ford aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda "ford" aratir
    And kullanici 3 saniye bekler
    And  google sayfasinda basligin "ford" icerdigini test eder
    And sayfayi kapatir

   @arac3
  Scenario: TC03 Arama kutusunda audi aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda "audi" aratir
    And kullanici 3 saniye bekler
    And  google sayfasinda basligin "audi" icerdigini test eder
    And sayfayi kapatir