import 'package:flutter/material.dart';
//import 'package:vibration/vibration.dart';
import 'package:get/get.dart';

class screenOne extends StatefulWidget {
  const screenOne({Key? key}) : super(key: key);

  @override
  _screenOneState createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {
  var _counter = 0.obs;

  void _incrementCounter() {
    _counter.value++;
    print(_counter.value);
  }

  void _reset() {
    Get.defaultDialog(
        onConfirm: () => {
              Get.back(),
              this._counter.value = 0,
            },
        middleText: 'Are you Sure to Reset ?',
        confirmTextColor: Colors.white,
        textConfirm: 'Sure',
        textCancel: 'Cancel',
        cancelTextColor: Colors.redAccent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/screen1night.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Container(
                          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                          alignment: Alignment.center,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              border: Border.all(width: 2, color: Colors.teal)),
                          child: Obx(() => (Text(
                                '${_counter.value}',
                                style: TextStyle(
                                    fontSize: 120, color: Colors.white70),
                              ))))),
                  Container(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 0,
                        bottom: 10,
                      ),
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                        color: Colors.teal,
                        onPressed: () {
                          this._reset();
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'Reset',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 150,
                      height: 300,
                      child: RaisedButton(
                        color: Colors.teal,
                        onPressed: () => {
                          _incrementCounter(),
                        },
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 50, color: Colors.white70),
                        ),
                      ),
                    ),
                  )
                ])));
  }
}
