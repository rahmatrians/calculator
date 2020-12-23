import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> wadah = [];
  List<int> nilai = [];
  int operate = 0;
  int operatess;
  int total = 0;

  String wadahLoop() {
    String teks = "";
    for (String num in wadah) {
      teks += num;
    }
    return teks;
  }

  void Check(int num) {
    if (nilai != null) {
      nilai.insert(0, num);
      nilai.removeLast();
    }
  }

  double calculate() {
    switch (operatess) {
      case 1:
        total = nilai[0] + nilai[1];
        return total.toDouble();
        break;
      case 2:
        total = nilai[0] - nilai[1];
        return total.toDouble();
        break;
      case 3:
        total = nilai[0] * nilai[1];
        return total.toDouble();
        break;
      default:
        // total.toDouble();
        // total = nilai[0].toDouble() / nilai[1].toDouble();
        // return total;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Column(
          children: [
            Flexible(
              child: Column(
                children: [
                  Flexible(
                      flex: 2,
                      child: Text((wadah == null) ? "0" : wadahLoop(),
                          style: TextStyle(fontSize: 25))),
                  Flexible(
                    flex: 8,
                    child: Text(
                        (total.toString() == null) ? "0" : total.toString(),
                        style: TextStyle(fontSize: 45)),
                  )
                ],
              ),
              flex: 1,
            ),
            Spacer(flex: 1),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('7'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("7");
                                nilai.add(7);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('8'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("8");
                                nilai.add(8);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('9'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("9");
                                nilai.add(9);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('+'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("+");
                                operate = 1;
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('6'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("6");
                                nilai.add(6);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('5'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("5");
                                nilai.add(5);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('4'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("4");
                                nilai.add(4);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('-'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("-");
                                operate = 2;
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('3'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("3");
                                nilai.add(3);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('2'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("2");
                                nilai.add(2);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('1'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("1");
                                nilai.add(1);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('x'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("x");
                                operate = 3;
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('C'),
                            shape: StadiumBorder(),
                            color: Colors.orange,
                            onPressed: () {
                              setState(() {
                                wadah = [];
                                nilai = [];
                                operate = 0;
                                operatess = 0;
                                total = 0;
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('0'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("0");
                                nilai.add(0);
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                          child: Text('='),
                          shape: StadiumBorder(),
                          onPressed: () {
                            setState(() {
                              operatess = operate;
                              calculate();
                            });
                          },
                        ),
                      ),
                      Spacer(flex: 1),
                      SizedBox(
                        width: 65,
                        height: 65,
                        child: RaisedButton(
                            child: Text('-'),
                            shape: StadiumBorder(),
                            onPressed: () {
                              setState(() {
                                wadah.add("-");
                                operate = 2;
                              });
                            }),
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                ],
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
