import UIKit

var greeting = "Hello, playground"

//collections

var ilkDizi = ["23","atakan","metin"]
//liste bildiğin
//index aynı şekilde seçiliyo ilkDizi[0]
//bunda listeye tek tip koyuluyo sonuna as [Any] yazarsak okey

var karisikdizi = [100,"kaan",true] as [Any]
//alttaki metod sen verinin hangi tipte olduğunu biliyosan ona göre metod çağırıyo
//apppend yine ekleme
var yeniDegisken = karisikdizi[1] as! String
//sort metodu aynı

//set
//her eleman unique oluyo, index yok
//listeden sete çevirirsen duplicate veriler siliniyo
var kSet : Set = [1,3,5,7,8,9,0]
var aSet : Set = [4,6,0,12,14]
//union birleştiriyo

var birlesikSet = kSet.union(aSet)
	
//dictionary aynı mantık ama [] ile yazılıyo


//döngüler konusu
//while
var x = 4
while x<10 {
    print(x)
    x+=1
}

// for

//for eleman in myArray {}

//if else
// and &&
// or ||

// if aynı sonuna : koymuyon {} içine kodu yazıyosun işte else if süslünün sonuna yazıyosun şartı koyup tekrar süslü koyuyosun else de var tabi elif yerine else if

//fonksiyon
// func ornekfonksiyon() {} şeklinde oluşturuluyor fonksiyon
//fonksiyon aynı şekilde çağrılıyor ama çağırırken key value gibi değeri veriyosun
// parametre eklerken tipini belirtiyorsun mesela ornek fonksiyon(a: String)
//fonksiyonun sonuna -> Int yazdı int döndürecek şartı koyuyo anlamsız return ile döndürüyosun yine

// opsiyoneller

var benimIsmim : String?

benimIsmim?.uppercased()

//sonuna soru işareti koyuyoruz kod çalışsındiye boş değer ataması işte bu arada boş değer burada nil null değil

//force unwrapping
// ünlem işareti yine programın çalışmasını sağlıyo mesela strden inte çevireceğimiz kesinse Int(string sayı)! yaparsak çalışır
// ?? soru işareti nill gelirse deafult değer atarsın ?? 1 yaparsın mesela standart 1 alır

// if let eğer tanımlayabilirsen anlamına gelir
var kullanıcınumarası = "20"
if let yeniSonuc = Int(kullanıcınumarası) {
    yeniSonuc * 5
} else {
    print("yanlış girdin bro")
}
