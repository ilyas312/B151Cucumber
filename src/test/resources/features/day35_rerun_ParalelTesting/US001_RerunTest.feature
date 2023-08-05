Feature: US001 Google Sayfasi Testi

  Background: Google Sayfasina Gidilir
    Given kullanici "googleUrl" sayfasina gitti

    @arc
    Scenario: TC01 Arama kutusunda volvo aratir
      Then kullanici google arama kutusunda "volvo" aratir
      And kullanici 3 saniye bekler
      And  google sayfasinda basligin "volvo" icerdigini test eder
    And sayfayi kapatir

  @arc
  Scenario:TC02 Arama kutusunda ford aratir
    Then kullanici google arama kutusunda "ford" aratir
    But kullanici 1 saniye bekler
    And google sayfasinda basligin "ford" icerdigini test eder
    And sayfayi kapatir

  @arc
  Scenario:TC03 Arama kutusunda audi aratir
    Then kullanici google arama kutusunda "audi" aratir
    But kullanici 2 saniye bekler
    And google sayfasinda basligin "audi" icerdigini test eder
    And sayfayi kapatir