import 'package:flutter/material.dart';

// Color Palette
//Eggshell: 0xFFF3F0D7
//Deep Champagne: 0xFFFED2AA
//Light Silver: 0xFFCEE5D0


void main() {
  runApp(
    const MaterialApp(
      title: "First App",
      home: homeScreen(),
      debugShowCheckedModeBanner: false,
    )

  );
}

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class descriptionPage extends StatelessWidget {
  const descriptionPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F0D7),

    );
  }
}



class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}



