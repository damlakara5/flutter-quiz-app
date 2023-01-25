// İspanyolca

import 'package:flutter/material.dart';

class TestYapisi{
  // nitelikler
  int aktifSoru= 0 ;
  int dogru= 0;
  int yanlis = 0;
  List<Icon> d_y_bilgisi = [];
  List<Soru> Sorular = [
  Soru(soru_metni:"1-Desayuno un café y una tostada ______ la mañana.", a: "por", b: "de", c: "con", d: "que", cevap: "A" ),
  Soru(soru_metni:"2- Tenemos dos camisas ______ .", a:  "azules", b: "gris",  c:"blanca", d: "gusta", cevap: "A" ),
  Soru(soru_metni:"3 A mí me ______ las películas españolas.", a: "gusto",b: "gustan",c: "gusta", d: "goston",cevap: "B" ),
  Soru(soru_metni:"4-  ¿ ______ años tienes?", a:  "Quién",b:  "Cuántos ", c: "Dónde",d:  "tan",cevap: "B" ),
  Soru(soru_metni:"5- Ana es más delgada ______ Teresa.",a:  "tan",b: "que",c: "como", d:"tae",cevap: "B" ),
  Soru(soru_metni:"6- Mi padre tiene ______ años.",a:  "cuarentayocho",b: "quarenta y ocho",c: "cuarenta y ocho", d:"sonlan",cevap: "C" ),
  Soru(soru_metni:"7- ______ treinta años.",a:  "soy",b: "estoy",c: "tengo", d:"gusta",cevap: "C" ),
  Soru(soru_metni:"8- ¿Qué te ______ Granada?",a:  "parece",b: "gusta ",c: "encanta", d:"tengo",cevap: "A" ),
  Soru(soru_metni:"9- ¿Qué hora es? ______ .",a:  "Hay las cinco",b: "Están las cinco",c: "Son las cinco", d:"voyvoy",cevap: "C" ),
  Soru(soru_metni:"10- Los chicos ______ a la montaña.",a:  "voy",b: "vayan",c: "van", d:"von",cevap: "C" ),
  Soru(soru_metni:"11-  El próximo fin de semana ______ una excursión.",a:  "tenemos hacer",b: "estamos haciendo",c: "vamos a hacer", d:"estan las",cevap: "C" ),
  Soru(soru_metni:"12-  Javier ______ de Granada, pero ______ en Salamanca",a:"as-as",b: "es-es",c: "está-es", d:"es-está",cevap: "D" ),
  Soru(soru_metni:"13- Discutimos mucho con ______ compañeros de clase.",a:"nuestros ",b: "nosotros",c: "nos", d:"nosa",cevap: "A" ),
  Soru(soru_metni:"14- Tú ______ levantas a las 8, yo ______ levanto a las 9.",a:  "se-te",b: "me-se",c: "te-me ", d:"sa-te",cevap: "C" ),
  Soru(soru_metni:"15-  ______ hambre y sed.",a:  "hay",b: "soy",c: "goy", d:"tengo",cevap: "D" ),
  Soru(soru_metni:"16-¿ ______ unos libros en la mesa?",a:  "Están",b: "Hay",c: "Está", d:"Hey",cevap: "B" ),
  Soru(soru_metni:"17-  ¿ ______ la respuesta?",a:  "Hace",b: "Hay",c: "Sabes", d:"dedo",cevap: "C" ),
  
];

void sonrakiSoru(){ 
    if (Sorular.length-1 > aktifSoru)
    aktifSoru++;  
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