import 'package:flutter/material.dart';
import 'package:lab4_6/goodPage.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
  String currentGood = "assets/mac.png";

  void changeMain(String text) {
    setState(() {
      currentGood = text;
    });
  }

  Container createContainerWithElevatedButton(String text) {
    return Container(
        height: 50,
        width: 250,
        margin: const EdgeInsets.only(left: 30, right: 30),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              changeMain(text);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Image.asset(
              text,
              width: 160,
              height: 190,
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      "New Collections",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 30, top: 50),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  cardsInformation("assets/mac.png");
                                });
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (BuildContext context)
                                => GoodPage(title: currentGood),
                                ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                    Color>(Colors.white),),
                              child: Image.asset(
                                currentGood,
                                width: 320,
                                height: 350,
                              ))
                        ],
                      ))
                ],
              ),
              Center(
                  child: Container(
                      margin: const EdgeInsets.only(top: 0),
                      height: 150,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: ListView(
                        padding: const EdgeInsets.all(8),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          createContainerWithElevatedButton("assets/mac.png"),
                          createContainerWithElevatedButton("assets/metr.png"),
                          createContainerWithElevatedButton("assets/sally.png"),
                          createContainerWithElevatedButton("assets/doc.png"),
                        ],
                      ))),
            ],
          )
        ],
      ),
    );
  }
}

void cardsInformation(String text) {

}
