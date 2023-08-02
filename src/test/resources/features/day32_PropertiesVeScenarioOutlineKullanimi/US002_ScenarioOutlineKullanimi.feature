Feature: US002 Google Sayfasi Testi

  Scenario Outline: Arama kutusunda ford aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda "<aranacakArac>" aratir
    But kullanici 1 saniye bekler
    And google sayfasinda basligin "<aranacakArac>" icerdigini test eder
    Examples:
      | aranacakArac |
      | ford         |
      | volvo        |
      | audi         |
      | mercedes     |

  #Scenario Outline kullanimi testNG deki data provider mantığı ile aynı çalışır.
#Scenario Outline yapısını kullandıktan sonra birden fazla veri ile arama işlemi
#yapmak ya da login işlemi yapmak istiyorsak aratmak istediğimiz kelimeyi
#"< >" içine belirtiriz.Daha önce parametreli method oluşturduğumuz için tekrar
#parametreli method oluşturmaya gerek kalmadan Scenario Outline yapısına tıklayarak
#alt kısımda çıkan Examples bölümünde yukarıdaki örnekteki gibi belirttiğimiz
#başlık altına istediğimiz verileri girerek sırasıyla arama işlemleirni gerçekleştirmiş
#oluruz.


