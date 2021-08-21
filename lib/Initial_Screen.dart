import 'package:flutter/material.dart';
import 'package:textdisplay/main.dart';

// ignore: camel_case_types
class landingPage extends StatefulWidget {
  @override
  _landingPage createState() => _landingPage();
}

// ignore: camel_case_types
class _landingPage extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(
            padding: EdgeInsets.all(0),
            alignment: Alignment.center,
            child: Image(
              height: 200,
              width: 200,
              fit: BoxFit.fill,
              image: AssetImage("img/download.png"),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              padding: EdgeInsets.all(0),
              width: 110,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[400])),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Proceed",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Icon(Icons.arrow_forward_sharp)
                ]),
              ))
        ]));
  }
}
