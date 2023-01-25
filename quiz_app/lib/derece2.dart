import 'package:flutter/material.dart';
import 'package:quiz_app/giris.dart';
import 'package:quiz_app/ispanyolca_giris.dart';

// İspanyolca

class Derece3 extends StatelessWidget {
  const Derece3({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
         backgroundColor: Color.fromRGBO( 133, 173, 210, 1),
    
          body: Column(
        children: [
          Expanded( flex: 2, child: Center(child: Text("İspanyolca" ,style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 0, 0, 0)),)),),

          Center(child: Text("İspanyolcayı Seçtin!" ,style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 255, 255),) )),
          Center(child: Text("Çözmek istediğin seviyeyi de seçersen teste" ,style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 255, 255),) )),
          Center(child: Text("başlayabiliriz!" ,style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 255, 255),) )), 
          Expanded( flex: 1,
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color.fromARGB(65, 16, 0, 40) ),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  Quiz_ispanyolca(), ));
                  }, child: Text("A1") ),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color.fromARGB(65, 16, 0, 40) ), onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>  Quiz_ispanyolca(), ));
                  }, child: Text("A2" , style: TextStyle(color: Color.fromARGB(235, 255, 255, 255),),),
                )
                )
                ),
              ],
            ),
          ),
          Expanded( flex: 1,
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color.fromARGB(65, 16, 0, 40) ),onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz_ispanyolca(), ));
                  }, child: Text("B1") ),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color.fromARGB(65, 16, 0, 40) ),onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>  Quiz_ispanyolca(), ));
                  }, child: Text("B2") ),
                )),
              ],
            ),
          ),
          Expanded( flex: 1,
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color.fromARGB(65, 16, 0, 40) ),onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>  Quiz_ispanyolca(), ));
                  }, child: Text("C1") ),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color.fromARGB(65, 16, 0, 40) ),onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>  Quiz_ispanyolca(), ));
                  }, child: Text("C2") ),
                )),
              ],
            ),
          ),

           
          SizedBox(width: 10.0, height: 10.0)
        ],

      ),

   
    );
  }

  void setState(Null Function() param0) {}

}