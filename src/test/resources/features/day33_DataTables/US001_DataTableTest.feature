Feature: US001 Google Sayfasinda Urun Aramasi

  Scenario: TC01 Arama Kutusunda Verilen Urunler Aratilir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici data tableda verilen bilgileri aratir
      | Datalar  |
      | samsung  |
      | nokia    |
      | apple    |
      | motorola |
  And sayfayi kapatir
  #AltGr + <> basarsak --> bu sembole ulaşırız |

    #DataTable, Scenario Outline daki gibi birden fazla veriyi aynı scenario'da
  #test etmek içinb kullanılır.Scenario Outline dan farklı olarak verilerle ilgili
  #tabloları istediğimiz stepten sonra kendimiz oluşturabiliriz.Tabloyu
  #Oluşturduğumuz step'in method'una parametre olarak cucumber.io dan DataTable
  #parametresini ekleriz.Bu parametre sayesinde oluşturmuş olduğumuz tabloyu
  #bir list'e dönüştürüp loop ile verileri kullanabiliriz.Birden fazla sütun
  #oluşturduysak yine DataTable parametresi sayesinde excelden bildiğimiz row
  #methodu ile bu datalara ulaşabiliriz.