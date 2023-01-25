import 'package:flutter/material.dart';
import 'package:quiz_app/giris.dart';

class Derece1 extends StatelessWidget {
  const Derece1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(173, 17, 32, 99),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
                child: Text(
              "İngilizce",
              style: TextStyle(
                  fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)),
            )),
          ),
          Center(
              child: Text("İngilizceyi Seçtin!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ))),
          Center(
              child: Text("Çözmek istediğin seviyeyi de seçersen teste",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ))),
          Center(
              child: Text("başlayabiliriz!",
                  style: TextStyle(
                    fontSize: 20,
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
                          primary: Color.fromARGB(255, 71, 178, 231)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quiz(),
                            ));
                      },
                      child: Text("A1",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 71, 178, 231)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Quiz(),
                                ));
                          },
                          child: Text(
                            "A2",
                            style: TextStyle(
                                color: Color.fromARGB(235, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
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
                          primary: Color.fromARGB(255, 71, 178, 231)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quiz(),
                            ));
                      },
                      child: Text("B1",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 71, 178, 231)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quiz(),
                            ));
                      },
                      child: Text("B2",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                )),
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
                          primary: Color.fromARGB(255, 71, 178, 231)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quiz(),
                            ));
                      },
                      child: Text("C1",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 71, 178, 231)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quiz(),
                            ));
                      },
                      child: Text("C2",
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
