import 'package:apprev/list.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';


void main() {
  runApp(
    const MaterialApp(
      title: "First App",
      home: splashScreen(),
      debugShowCheckedModeBanner: false,
    )

  );
}

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F0D7),
      appBar: AppBar(
        title: const Text("WORD APP",style: TextStyle(fontFamily: "Roboto",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22),),
        centerTitle: true,
        backgroundColor: const Color(0xFFFED2AA),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: animals.length,

          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: ListTile(
                tileColor: const Color(0xFFCEE5D0),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(animals[index]["animal"],style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => descriptionScreen(
                        animalName: animals[index]["animal"],
                        animalDescription: animals[index]["description"],
                        animalStatus: animals[index]["status"],
                        animalURL: animals[index]["img"])),
                  );
                },
              ),
            );
          }),
      ),

    );
  }
}


class descriptionScreen extends StatelessWidget {
  const descriptionScreen({Key? key, required this.animalName, required this.animalDescription, required this.animalStatus, required this.animalURL}) : super(key: key);
  final String animalName;
  final String animalDescription;
  final String animalStatus;
  final String animalURL;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F0D7),
      appBar: AppBar(
        title: const Text("Animal Description",style: TextStyle(fontFamily: "Roboto",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22),),
        centerTitle: true,
        backgroundColor: const Color(0xFFFED2AA),
      ),
      body: Column(
        children: [
          Image.network(animalURL),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(animalName,style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(animalStatus,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold,letterSpacing: 1.5)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(animalDescription,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,letterSpacing: 1.5)),
          )
        ],
      ),
    );
  }
}



class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/images/turtle.png"),
      title: const Text(
        "App Title",
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor:  const Color(0xFFF3F0D7),
      showLoader: true,
      loaderColor: const Color(0xFFCEE5D0) ,
      loadingText: const Text("Loading..."),
      navigator: const homeScreen(),
      durationInSeconds: 5,
    );
  }
}



