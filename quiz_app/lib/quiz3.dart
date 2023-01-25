// Fransızca

import 'package:flutter/material.dart';

class TestYapisi{
  // nitelikler
  int aktifSoru= 0 ;
  int dogru= 0;
  int yanlis = 0;
  List<Icon> d_y_bilgisi = [];
  List<Soru> Sorular = [
  Soru(soru_metni:"1 Il ____ médecin.", a: "es", b: "est", c: "suis", d: "êtes", cevap: "A" ),
  Soru(soru_metni:"2-Est-ce qu’il _____ le chocolat?", a:  "aimes", b: "es",  c:"aime", d: "son", cevap: "B" ),
  Soru(soru_metni:"3-_____ est sur la table?", a: "Où",b: "Quel",c: "Qui", d: "Qu’est-ce qui",cevap: "C" ),
  Soru(soru_metni:"4- Elle ____ dans 2 mois.", a:  "est arrivée",b:  "va arriver", c: "arrivait",d:  "arriverait",cevap: "D" ),
  Soru(soru_metni:"5- Elle ____ à Paris il y a 3 ans.",a:  "avait",b: "est allé",c: "avais", d:"est allée",cevap: "A" ),
  Soru(soru_metni:"6- Au revoir Mélanie, on se voit ce soir! -Salut, __ !",a:  "demain",b: "à lundi",c: "à tout à l’heure", d:"à un de ces jours",cevap: "C" ),
  Soru(soru_metni:"7- Ils ont ____ beaux livres.",a:  "pas",b: "quelque",c: " rien", d:"quelques",cevap: "D" ),
  Soru(soru_metni:"8- Elle ____ ici depuis dix ans.",a:  "travaille",b: "a travaillé",c: "va travailler", d:"avait travaillé",cevap: "B" ),
  Soru(soru_metni:"9- ____ ! Ou on va être en retard !",a:  "Tu dépêches",b: "Dépêche",c: "Dépêches", d:"Dépêche-toi",cevap: "B" ),
  Soru(soru_metni:"10- Mes notes sont ____ que les tiennes.",a:  "mieux",b: "meilleur",c: "meilleurs", d:"bons",cevap: "A" ),
  Soru(soru_metni:"11- Est-ce que tu fumes ? Non, je ____.",a:  "fume pas",b: "ne fumes pas.",c: "ne fume.", d:" ne fume pas.",cevap: "A" ),
  Soru(soru_metni:"12-Regarde ce que ______ !",a:"j’ai acheté",b: " j’ai achète",c: "je suis acheté", d:"j’ai achetée",cevap: "A" ),
  Soru(soru_metni:"13-Pardon, est-ce que tu peux me prêter ___ dictionnaire ?",a:"ta",b: "tien",c: "tienne", d:"ton",cevap: "A" ),
  Soru(soru_metni:"14-Les étudiants sont ____ la salle.",a:  "sur",b: "dans",c: "à", d:"en",cevap: "C" ),
  Soru(soru_metni:"15- Il a été envoyé ___ prison.",a:  "à la",b: " au",c: "la", d:"aux",cevap: "C" ),
  Soru(soru_metni:"16- J’ai très ___. Je vais déjeuner.",a:  " soif",b: "mal",c: "faim", d:"froid",cevap: "C" ),
  Soru(soru_metni:"17-  Tous les jours, ils ____ à travailler à 7h.",a:  "commenceront",b: "commençons",c: "commençaient", d:" commencent",cevap: "D" ),
 
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