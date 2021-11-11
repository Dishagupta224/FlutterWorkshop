import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "First App",
    home: homeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF7a72bd),
        appBar: AppBar(
          backgroundColor: Color(0xFF85dbd9),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 700,
              width: 400,
              color: Color(0xFFfff7e7),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    color: Color(0xFF369694),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 300,
                            width: 350,
                            color: Color(0xFFffca7b),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("My Text", style: TextStyle(fontSize: 30)),
                                ),
                                Padding(padding: const EdgeInsets.all(8.0), child: Icon(Icons.person))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("My Text", style: TextStyle(fontSize: 30)),
                        )
                      ],
                    )),
              )),
        ));
  }
}
