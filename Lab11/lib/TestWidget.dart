import 'package:flutter/material.dart';


class MySliderApp extends StatefulWidget {
  MySliderApp({ Key? key}) : super(key: key);

  @override
  _MySliderAppState createState() => _MySliderAppState();
}


class _MySliderAppState extends State<MySliderApp> {

  int _value = 0;

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
               Expanded(child:
              Slider(
                min: 0.0,
                max: 2.0,
                value: _value.toDouble(),
                onChanged: (double newValue) {
                  print(_value);
                  setState(() {
                    _value = newValue.round();
                  });
                },
              )
              ),
              Text("0.0"),
            ],
          ),
        ),
      ),
    );
  }



}