import 'package:flutter/material.dart';
import 'package:lab4_6/MyPageViewScreen.dart';

class GoodPage extends StatefulWidget {
  const GoodPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<GoodPage> createState() => _GoodPageState(title: title);
}

class _GoodPageState extends State<GoodPage> {
  final String title;

  _GoodPageState({required this.title});

  Container createDescr() {
    String descr = "";

    switch (title) {
      case "assets/mac.png":
        descr = "Молния МАКВИН, КЧАУ";
        break;
      case "assets/metr.png":
        descr = "Байки мэтра - крюк 2 метра";
        break;
      case "assets/sally.png":
        descr = "Sex не предлагать - могу не отказаться";
        break;
      case "assets/doc.png":
        descr = "Я пажилая билибоба";
        break;
      default:
        descr = "Вы сломали программу, звоните Байдену";
        break;
    }

    return Container(
        child: Text(
      descr,
      style: const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
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
              Padding(
                  padding: EdgeInsets.only(top: 100, left: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context)
                      => MyPageViewScreen(),
                      ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Image.asset(
                      title,
                      width: 360,
                      height: 180,
                    ),
                  ),
                  ),
              createDescr()
            ],
          )
        ],
      ),
    );
  }
}
