import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/skor.dart';
import 'package:quiz_app/sqldb.dart';
import 'package:quiz_app/quiz1.dart';

int timer = 20;
String showtimer = "20";

class Quiz_fransizca extends StatefulWidget {

  Quiz_fransizca({Key? key}) : super(key: key);

  @override
  State<Quiz_fransizca> createState() => _QuizState();
}

class _QuizState extends State<Quiz_fransizca> {
  SqlDb sqlDb = SqlDb();

void initState(){
  starttimer();
  super.initState();
}

  void starttimer() async{
  const onesec = Duration(seconds: 1);
  Timer.periodic(onesec,(Timer t){
    setState((){
      if(timer < 1){
        t.cancel();
       setState(() {
           Navigator.push(context, MaterialPageRoute(builder: (context) => const Skor(), ));
        });  
      } else{
       timer = timer - 1; 
      }
      showtimer = timer.toString();

  });
  });
}

  get child => null;

  get drawer => null;
  bool click = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
       // appBar: AppBar(backgroundColor: Color.fromRGBO( 133, 173, 210, 1), ), 
         backgroundColor: Color.fromRGBO( 133, 173, 210, 1),
      //drawer
          drawer: new Drawer(
            backgroundColor: Color.fromRGBO( 133, 173, 210, 1),
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(margin: EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 40), child: Text("Soru Sayısı:  ${benimTestim.Sorular.length}" , style: TextStyle(fontSize: 20),)),
                Text("------------------------------------",style: TextStyle(fontSize: 30), ),
                Container(margin: EdgeInsets.all(40), child: Text("Çözdüğüm Soru Sayısı: ${benimTestim.aktifSoru}",  style: TextStyle(fontSize: 20),)),
                Text("------------------------------------",style: TextStyle(fontSize: 30), ),
                  Container( margin: EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Text("Kalan Süre:" ,  style: TextStyle(fontSize: 20),),
                        Text(showtimer , style: TextStyle(fontSize: 28, color: Color.fromARGB(255, 255, 5, 5)),),
                      ],
                    ),
                  ),
                Text("------------------------------------",style: TextStyle(fontSize: 30), ),
                Container(margin: EdgeInsets.all(50), child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 255, 5, 5)), onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Skor(), ));
                }, child: Text("Testi Bitir" ,  style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),))),
                
                ],
              ), //Column
            ), //Drawer 
          body: Column(
        children: [

          Container( margin: EdgeInsets.only(left: 350),
            child: Padding(
                padding: EdgeInsets.all(0),
                child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("resimler/btest.png"),

              )
            ),
          ),

          Expanded(child: Center(
            child: Text( benimTestim.soruYaz(), style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 255, 255, 255)) ),
              ),
              ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Container( margin: EdgeInsets.only(left: 20, right: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      primary:  Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ) , onPressed: () {
                        setState((){ 
                          if(benimTestim.cevapKontrol("A") ){
                            click = true;
                          //  ElevatedButton.styleFrom(primary: click?Color.fromARGB(255, 21, 220, 21): Color.fromARGB(255, 247, 2, 2) );
                          }
                          else{
                            click = false;
                          }
                        });
                    },
                    child: Text(benimTestim.aYaz() , style: TextStyle( color: Color.fromARGB(255, 0, 0, 0) ) ),  
                    ),
                  ),
                ),

                Container(  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 255, 255),
                      padding: const EdgeInsets.symmetric(vertical: 15,)
                    ), onPressed: () {
                          setState((){ 
                          if(benimTestim.cevapKontrol("B") ){
                            click = true;
                          //  ElevatedButton.styleFrom(primary: click?Color.fromARGB(255, 21, 220, 21): Color.fromARGB(255, 247, 2, 2) );
                          }
                          else{
                            click = false;
                          }
                        });
                        

                    }, child: Text(benimTestim.bYaz(), style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),),
                  ),
                ),

                Container( margin: EdgeInsets.only(left: 20, right: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.symmetric(vertical: 15)
                    ), onPressed: () {
                         setState((){ 
                          if(benimTestim.cevapKontrol("C") ){
                            click = true;
                           // ElevatedButton.styleFrom(primary: click?Color.fromARGB(255, 21, 220, 21): Color.fromARGB(255, 247, 2, 2) );
                          }
                          else{
                            click = false;
                          }
                        });

                    }, child: Text(benimTestim.cYaz(), style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),),
                  ),
                ),

                Container(  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.symmetric(vertical:15 )
                    ), onPressed: () {
                          setState((){ 
                          if(benimTestim.cevapKontrol("D") ){
                            click = true;
                           // ElevatedButton.styleFrom(primary: click?Color.fromARGB(255, 21, 220, 21): Color.fromARGB(255, 247, 2, 2) );
                          }
                          else{
                            click = false;
                          }
                        });

                    }, child: Text(benimTestim.dYaz(),style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                )
              ],
            ),
          ),
          Text("Sonuç Bilgisi",style: TextStyle(fontSize: 20.0),),
          Row(children: benimTestim.d_y_bilgisi,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container( margin: EdgeInsets.only(left: 150),
                  child: ElevatedButton( style: ElevatedButton.styleFrom( primary: Color.fromRGBO( 133, 173, 210, 1),), onPressed: () {},
                      child: Text(showtimer , style: TextStyle(color: Color.fromARGB(255, 255, 45, 45),),)),
                ),
                Container( margin: EdgeInsets.only(left: 50),
                  child: ElevatedButton( style: ElevatedButton.styleFrom( primary: Color.fromRGBO( 61, 102, 140, 1),), onPressed: () {
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => const Skor(), ));
                   setState(() {
                     benimTestim.sonrakiSoru();
                   });
                  },
                      child: Text("Soruyu Atla") ),
                ),
              ],
            ),
          ),
          
          SizedBox(width: 10.0, height: 10.0)
        ],

      ),

      ),
    );
  }
}



