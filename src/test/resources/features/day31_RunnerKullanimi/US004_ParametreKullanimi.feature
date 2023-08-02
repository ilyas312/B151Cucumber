#Scenario'larda birden fazla url'e gitmek istediğimizde ya da birden fazla ürün
  #aratmak istediğimizde her step için yeniden method oluşturmak yerine gitmek
  #isediğimiz url ya da aaratmak istediğimiz ürünü stepleri yazarken " " içine
  #alırsak step definition class'ında parametreli bir methos oluşturur ve bu methodu
  #diğer url ve aratmak istediğimiz ürünler için dire feature file üzerinden
  #değiştirip kullnarabilirz.Böylece tekrar tekrar her step için method
  #oluşturmamış oluruz Aşağıdaki örneklerde de bunu görebilirsiniz

Feature: US004 TechProEducation Arama Testi
  Scenario: TC01 Sayfada Arama Yapar
    Given kullanici "https://techproeducation.com" sayfasina gider
    Then arama kutusunda "mobile" aratir
    When cikan dropdown da mobile developer linkine tiklar
    And sayfa basliginin Mobile icerdigini test eder
    And sayfayi kapatir

    Scenario: TC02 Sayfada Arama Yapar
      Given kullanici "https://techproeducation.com" sayfasina gider
      Then arama kutusunda "qa" aratir
      And sayfayi kapatir

  Scenario: TC03 Sayfada Arama Yapar
    Given kullanici "https://techproeducation.com" sayfasina gider
    Then arama kutusunda "java" aratir
    And sayfayi kapatir

    Scenario: TC04 Sayfada Arama Yapar
      Given kullanici "https://google.com" sayfasina gider

      Scenario: TC05 Sayfada Arama Yapar
        Given kullanici "https://youtube.com" sayfasina gider

        Scenario: TC06 Sayfada Arama Yapar
          Given kullanici "https://yahoo.com" sayfasina gider