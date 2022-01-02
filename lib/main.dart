import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 50),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(children: [
            Container(
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  alignment: Alignment.center,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(width: 2, color: Colors.teal)),
                  child: Text(
                    '$_counter',
                    style: TextStyle(fontSize: 130, color: Colors.grey),
                  ),
                )),
            Container(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 00,
                  bottom: 10,
                ),
                alignment: Alignment.topLeft,
                child: RaisedButton(
                  color: Colors.teal,
                  onPressed: () {
                    this._reset();
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.bottomRight,
                height: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(color: Colors.white),
                child: GestureDetector(
                  onTap: () {
                    this._incrementCounter();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ))
          ])),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
