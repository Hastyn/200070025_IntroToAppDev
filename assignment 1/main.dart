import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double pow(double a,int b){
    double out=1;
    for(int i=0;i<b;i++){
      out=out*a;
    }
    return out;
  }
  double no1 = 0;
  double no2 = 0;
  int d = 0; //number of decimal places
  String s = "";
  bool k = false,
      m = false; //k for number one or two and m for the decimal input
  double output = 0;
  int operation = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    '$s',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    '$output',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 7;
                          else
                            no1 = 10 * no1 + 7;
                          if (m) d++;
                          s = s + '7';
                        });
                      },
                      child: Text('7')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 8;
                          else
                            no1 = 10 * no1 + 8;
                          if (m) d++;
                          s = s + '8';
                        });
                      },
                      child: Text('8')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 9;
                          else
                            no1 = 10 * no1 + 9;
                          if (m) d++;
                          s = s + '9';
                        });
                      },
                      child: Text('9')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          k = true;
                          no1 = no1 / pow(10, d);
                          d = 0;
                          operation = 0;
                          m = false;
                          s = s + '/';
                        });
                      },
                      child: Text('/')),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 4;
                          else
                            no1 = 10 * no1 + 4;
                          if (m) d++;
                          s = s + '4';
                        });
                      },
                      child: Text('4')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 5;
                          else
                            no1 = 10 * no1 + 5;
                          if (m) d++;
                          s = s + '5';
                        });
                      },
                      child: Text('5')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 6;
                          else
                            no1 = 10 * no1 + 6;
                          if (m) d++;
                          s = s + '6';
                        });
                      },
                      child: Text('6')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          k = true;
                          no1 = no1 / pow(10, d);
                          d = 0;
                          operation = 1;
                          m = false;
                          s = s + 'X';
                        });
                      },
                      child: Text('X')),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 1;
                          else
                            no1 = 10 * no1 + 1;
                          if (m) d++;
                          s = s + '1';
                        });
                      },
                      child: Text('1')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 2;
                          else
                            no1 = 10 * no1 + 2;
                          if (m) d++;
                          s = s + '2';
                        });
                      },
                      child: Text('2')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 3;
                          else
                            no1 = 10 * no1 + 3;
                          if (m) d++;
                          s = s + '3';
                        });
                      },
                      child: Text('3')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          k = true;
                          no1 = no1 / pow(10, d);
                          d = 0;
                          operation = 2;
                          m = false;
                          s = s + '-';
                        });
                      },
                      child: Text('-')),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          m = true;
                          s = s + '.';
                        });
                      },
                      child: Text('.')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 10 * no2 + 0;
                          else
                            no1 = 10 * no1 + 0;
                          if (m) d++;
                          s = s + '0';
                        });
                      },
                      child: Text('0')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (k)
                            no2 = 100 * no2;
                          else
                            no1 = 100 * no1;
                          if (m) d++;
                          s = s + '00';
                        });
                      },
                      child: Text('00')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          k = true;
                          no1 = no1 / pow(10, d);
                          d = 0;
                          operation = 3;
                          m = false;
                          s = s + '+';
                        });
                      },
                      child: Text('+')),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          no1 = 0;
                          no2 = 0;
                          d = 0; //number of decimal places
                          s = "";
                          k = false;
                          m = false; //k for number one or two and m for the decimal input
                          output = 0;
                          operation = -1;
                        });
                      },
                      child: Text('Clear')),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50.0),
                  child: OutlinedButton(onPressed: () {
                    setState(() {
                          no2=no2 / pow(10, d);
                          if(operation==0)
                          output=no1/no2;
                          else if(operation==1)
                          output=no1*no2;
                          else if(operation==2)
                          output=no1-no2;
                          else if(operation==3)
                          output=no1+no2;
                        });
                  }, child: Text('=')),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
