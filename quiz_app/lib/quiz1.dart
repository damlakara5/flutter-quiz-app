// Almanca

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestYapisi{
  // nitelikler
  int aktifSoru= 0 ;
  int dogru= 0;
  int yanlis = 0;
  List<Icon> d_y_bilgisi = [];
  List<Soru> Sorular = [
  Soru(soru_metni:"1-Ich habe ein schönes Haus. Es liegt in einer ruhigen ______", a: "Wald", b: "Fußballplatz", c: "Gegend", d: "See", cevap: "C" ),
  Soru(soru_metni:"2-Person A: Auskunft, Information. Was kann ich für Sie tun? Person B: Ich möchte eine _______ haben.", a:  "Telefonunterhaltung", b: "Telefongespräch",  c:"Telefonleitung", d: "Telefonverbindung", cevap: "B" ),
  Soru(soru_metni:"3-Du ______ mir wirklich nicht helfen.", a: "hättest",b: "hast",c: "brauchst", d: "magst",cevap: "C" ),
  Soru(soru_metni:"4- ______ sie eine gute Sängerin ist, ist die Konkurrenz groß", a:  "What size",b:  "How old", c: "How many",d:  "How much",cevap: "D" ),
  Soru(soru_metni:"5-Hast Du das Buch denn nicht mitgebracht? Ich ... es dringend gebraucht.",a:  "könnte",b: "sollte",c: "müßte", d:"hätte",cevap: "A" ),
  Soru(soru_metni:"6- Ich brauche unbedingt ein neues Kleid. _____",a:  "Hast du doch erst neulich eines bekommen",b: "Bekommen hast du doch erst neulich eines",c: "Doch erst neulich eines hast du bekommen", d:"Du hast doch neulich erst eines bekommen",cevap: "C" ),
  Soru(soru_metni:"7- Michael möchte einen neuen Anzug haben. ______ alter Anzug ist nicht sehr modern.",a:  "sein",b: "ihr",c: "seiner", d:"ihrer",cevap: "D" ),
  Soru(soru_metni:"8- Gibt es denn hier ____",a:  "keinen freundlichen Bedienungen?",b: "kein freundlicher Bedienung?",c: "keinen freundliche Bedienung?", d:"keine freundlichere Bedienung?",cevap: "B" ),
  Soru(soru_metni:"9- Welcher Satz ist korrekt?",a:  "Hat er mitgegangen, oder ist er zu Hause geblieben?",b: "Ist er mitgegangen, oder ist er zu Hause geblieben?",c: "Ist er mitgegangen, oder hat er zu Hause geblieben?", d:"Hat er mitgegangen, oder hat er zu hause geblieben?",cevap: "B" ),
  Soru(soru_metni:"10- Person A: Wo gibt es hier Briefmarken? Person B: Ich weiß nicht, ______",a:  "wo es hier welche gibt",b: "welche es wo gibt hier",c: "wo es hier gibt welche", d:"wo gibt es hier welche",cevap: "A" ),
  Soru(soru_metni:"11- Darf ich Ihnen unseren neuen Mitarbeiter, Herrn Meier, vorstellen?",a:  "Stellen Sie sich Herr Meier vor",b: "Bitte überlegen Sie, Herr Meier!",c: "Bitte stellen Sie sich vor Herrn Meier", d:"Sie kennen diesen Herrn noch nicht? Das ist Herr Meier",cevap: "A" ),
  Soru(soru_metni:"12- Das geht nicht. ______",a:"Niemand kommt",b: "Das ist unmöglich",c: "Er kann nicht laufen", d:"Das macht nichts",cevap: "A" ),
  Soru(soru_metni:"13- Ich habe eine Sprachreise nach England gemacht, ______ ich in Englisch ein schlechtes Schulzeugnis hatte.",a:"weil",b: "denn",c: "dabei", d:"deswegen",cevap: "B" ),
  Soru(soru_metni:"14- Der Deutschkurs war toll. Ich habe gute ... gemacht.",a:  "Aussichten",b: "Vorurteile",c: "Fortschritte", d:"Vorteile",cevap: "C" ),
  Soru(soru_metni:"15- Den Mitarbeitern steht eine Kantine _____",a:  "zum Essen",b: "zur Verfügung",c: "zur Benutzung", d:"zum Gebrauch",cevap: "C" ),
  Soru(soru_metni:"16- Man hat mir die Stelle eines Lehrers _______",a:  "mitgeteilt",b: "abgeschlossen",c: "angeboten", d:"bekommen",cevap: "C" ),
  Soru(soru_metni:"17- Auf der Mitgliederversammlung des Klubs wurden nur wenige Anträge _______",a:  "gestellt",b: "gebracht",c: "vermacht", d:"gefordert",cevap: "D" ),
 
];

void sonrakiSoru(){ 
    if (Sorular.length -1 > aktifSoru){
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
  yanlis++;
 return yanlis;
}


int printD(){
  dogru++;
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