import 'package:flutter/material.dart';
import 'package:quiz_app/skor.dart';
import 'package:sqflite/sqflite.dart';
import 'sqldb.dart';

class TestYapisi{
  // nitelikler
  int aktifSoru= 0 ;
  int dogru= 0;
  int yanlis = 0;
  List<Icon> d_y_bilgisi = [];
  String navigator = "";
  List<Soru> Sorular = [
  Soru(soru_metni:"1-What’s Jack doing in the garden? B- __________", a: "He’s watering the flowers.", b: "He’s flying in the sky.", c: "He’s swimming.", d: "He’s buying some books.", cevap: "A" ),
  Soru(soru_metni:"2-We can’t make an omelet because ____", a:  "There are a few eggs in the fridge.", b: "There aren’t any eggs in the fridge.",  c:"There is enough butter.", d: "There aren’t any apples on the tree.", cevap: "B" ),
  Soru(soru_metni:"3-_________________ B- No, thanks. I’m not hungry.", a: "Are you a student?",b: "Would you like a hamburger?",c: "How much is a toast?", d: "What is your favorite food?",cevap: "C" ),
  Soru(soru_metni:"4- A: _____ are these shoes? B- 50 TL", a:  "What size",b:  "How old", c: "How many",d:  "How much",cevap: "D" ),
  Soru(soru_metni:"5- I can’t buy a car. _____ ",a:  "I have got a lot of money.",b: "I haven’t got much money.",c: "It’s very cheap.", d:"We haven’t got a brother or a sister.",cevap: "A" ),
  Soru(soru_metni:"6- A rabbit is _____ than a tortoise.",a:  "slower",b: "faster",c: "hotter", d:"colder",cevap: "C" ),
  Soru(soru_metni:"7- Making a cake is ____ making baklava.",a:  "more difficult than",b: "as difficult as",c: "not as difficult as", d:"as easy as",cevap: "D" ),
  Soru(soru_metni:"8- We can’t go swimming today because the sea is ____",a:  "small",b: "easy",c: "warm", d:"cold",cevap: "B" ),
  Soru(soru_metni:"9- We live ___ a big apartment ______ the third floor.",a:  "in/on",b: "near/under",c: "on/behind", d:"between/next to",cevap: "B" ),
  Soru(soru_metni:"10- In my free time, I mostly ______ a song.",a:  "listen to",b: "speak to",c: "read", d:"write",cevap: "A" ),
  Soru(soru_metni:"11- What would you like to have? B- ____",a:  "I’d like to have some orange juice, please.",b: "Have you got anything else?",c: "No, I wouldn’t like to have coffee.", d:" I like drinking tea.",cevap: "A" ),
  Soru(soru_metni:"12- Let’s go to play outside. B- It isn’t a good idea. ____",a:"It isn’t raining outside.",b: "I’m tired.",c: "I prefer football to watching TV.", d:"You are very clever.",cevap: "A" ),
  Soru(soru_metni:"13- A-__________? B- Yes, I have.",a:"Do you have breakfast in the mornings?",b: "Where do you live?",c: "Are there a lot of trees in the garden?", d:"Have you got a brother or a sister?",cevap: "A" ),
  Soru(soru_metni:"14- A-__________? B- On Monday.",a:  "Where is the wedding ceremony?",b: "How do you go to school?",c: "When is the graduation party?", d:"Who is your best friend?",cevap: "C" ),
  Soru(soru_metni:"15- A-__________ water should we drink every day, doctor? B- You should drink at least two liters of water.",a:  "How",b: "How many",c: "How much", d:"How often",cevap: "C" ),
  Soru(soru_metni:"16- A-__________ brothers or sisters have you got? B- I haven’t got any brothers or sisters. I’m an only child.",a:  "How",b: "How many",c: "How much", d:"How often",cevap: "C" ),
  Soru(soru_metni:"17- We are going to have a holiday in Marmaris _______",a:  "yesterday",b: "last week",c: "this July", d:"last summer",cevap: "D" ),
 
];

void sonrakiSoru(){ 
    if (aktifSoru < Sorular.length -1){
    aktifSoru++;  
    } 
    else{
      return;
    }
}


// soru metnini yaz
String soruYaz(){
  if (aktifSoru == 0){
      dogru=0;
      yanlis=0;
    }
  return Sorular[aktifSoru].Soru_metni;
}

String aYaz(){
  return Sorular[aktifSoru].A_sikki;
}

String bYaz(){
  return Sorular[aktifSoru].B_sikki;
}

String cYaz(){
  return Sorular[aktifSoru].C_sikki;
}

String dYaz(){
  return Sorular[aktifSoru].D_sikki;
}

bool cevapKontrol(String kCevap){
  if (Sorular[aktifSoru].Cevap == kCevap){
    d_y_bilgisi.add(Icon(Icons.check),);
    dogru++;
   
  }
  else{
    d_y_bilgisi.add(Icon(Icons.close),);
    yanlis++;
    sonrakiSoru();
    return false;
  } 
  
  sonrakiSoru();
  return true;
}

int printY(){
 return yanlis;
}


int printD(){
  return dogru;
}
}

class Soru{
  String Soru_metni="";
  String A_sikki="";
  String B_sikki="";
  String C_sikki="";
  String D_sikki="";
  String Cevap="";

  Soru({required String soru_metni, required String a,  required String b, required String c,  required String d,  required String cevap}){
    this.Soru_metni=soru_metni;
    this.A_sikki=a;
    this.B_sikki=b;
    this.C_sikki=c;
    this.D_sikki=d;
    this.Cevap=cevap;
  }
}



TestYapisi benimTestim  = new TestYapisi();


