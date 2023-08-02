#https://editor.datatables.net adresine gidiniz
#Sayfadaki tabloda new butonuna basalım
#Çıkan pencerede verilen bilgileri girelim
#Create butonuna basalım
#Search bölümüne girdiğimiz firstname bilgisini girelim
#Başarılı bir şekilde giriş yapıldığını doğrulayalım
#Sayfayı kapatalım

Feature: US004 DataTables testi

  Scenario Outline: TC01 DataTables Veri Girisi
    Given kullanici "https://editor.datatables.net" url sayfasina gider
    Then kullanici new butonuna tiklar
    And cikan pencerede verilen bilgiler girilir"<firstname>","<lastname>","<possion>","<office>","<extenion>","<date>","<salary>"
    And kullanici 3 saniye bekler
    And kullanici create butonuna tiklar
    And kullanici 2 saniye bekler
    And kullanici searc bolumune "<firstname>" bilgisini girer
    And kullanici 3 saniye bekler
    And kullanici "<firstname>" ile basarili giris yapildigini dogrular
    And sayfayi kapatir
    Examples:
      | firstname | lastname | possion     | office  | extenion | date       | salary  |
      | john      | smith    | tester      | NYC     | 2134     | 2023-02-25 | 80000   |
      | sam       | walton   | businessman | LA      | 5262     | 2021-02-21 | 2000000 |
      | nancy     | brown    | developer   | Dallas  | 2346     | 2021-02-26 | 850000  |
      | george    | bush     | politician  | Dallas  | 9931     | 2021-02-24 | 9850000 |
      | barry     | allen    | unknown     | Central | 2103     | 2021-02-23 | 1000000 |
