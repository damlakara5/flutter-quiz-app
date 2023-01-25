import 'package:flutter/material.dart';
import 'package:quiz_app/quiz3.dart';
import 'package:quiz_app/secim.dart';

class Skor extends StatelessWidget {
  const Skor({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 75, 136),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 350),
            child: Padding(
                padding: EdgeInsets.all(0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("resimler/trophy.png"),
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 60, right: 60, top: 60),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 66, 181, 21),
              radius: 100,
              child: Text("Doğru Sayınız: ${benimTestim.printD()}",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 70, right: 60, bottom: 60, top: 10),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(253, 253, 22, 22),
              radius: 100,
              child: Text("Yanlış Sayınız: ${benimTestim.printY()}",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Secim(),
                    ));
              },
              child: Text("Ana Sayfaya Dön"))
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
