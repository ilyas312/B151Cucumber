Feature: US001 Google Sayfasi Testi
  Background: Google Sayfasina Gidilir
    Given kullanici "googleUrl" sayfasina gitti

    @volvo
    Scenario: TC01 Arama kutusunda volvo aratir
      Then kullanici google arama kutusunda "volvo" aratir
      And kullanici 3 saniye bekler
      And  google sayfasinda basligin "volvos" icerdigini test eder


      Scenario:TC02 Arama kutusunda ford aratir
        Then kullanici google arama kutusunda "arac2" aratir
        But kullanici 1 saniye bekler
        And google sayfasinda basligin "ford" icerdigini test eder


        Scenario:TC03 Arama kutusunda audi aratir
          Then kullanici google arama kutusunda "audi" aratir
          But kullanici 2 saniye bekler
          And google sayfasinda basligin "audi" icerdigini test eder
          And sayfayi kapatir

      #String kullanımda " " çitf tırnak ile parametreli method oluşturuyoruz.
      #Numeric kullanımda yani sayfayı x saniye bekler gibi kullanımlarda da
  #sayi belirttiğimiz zaman int olarak parametreli bir method oluşturur
  #Bunu feature file belirtme sebebimiz step definition içinde yaptığımız
  #beklemeyi stepleri okuyan kişi ya da dev. bunu bilmez ama bilmesi gerekiyorsa
  #feature file bunu direk görür ve webelemente ulaşılması için bekleme koyulduğunu
  #anlamış olur.