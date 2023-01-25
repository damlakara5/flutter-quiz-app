import 'package:flutter/material.dart';
import 'package:quiz_app/derece.dart';
import 'package:quiz_app/derece1.dart';
import 'package:quiz_app/derece2.dart';
import 'package:quiz_app/derece3.dart';

class Secim extends StatelessWidget {
  const Secim({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(172, 44, 30, 124),
      body: Column(
        children: [
          Expanded(flex: 2, child: Image.asset("resimler/trophy.png")),
          Center(
              child: Text("Haydi Başlayalım!",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ))),
          Center(
              child: Text("Hangi konuda Çözeceksin?",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ))),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(238, 84, 163, 199)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Derece1(),
                            ));
                      },
                      child: Text("İngilizce",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(238, 84, 163, 199)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Derece2(),
                                ));
                          },
                          child: Text(
                            "Almanca",
                            style: TextStyle(
                                color: Color.fromARGB(235, 255, 255, 255),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(238, 84, 163, 199)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Derece3(),
                            ));
                      },
                      child: Text("İspanyolca",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(238, 84, 163, 199)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Derece4(),
                            ));
                      },
                      child: Text("Fransızca",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
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
