import 'package:flutter/material.dart';
import 'package:textdisplay/Initial_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(darkTheme: ThemeData.dark(), home: landingPage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textContr = new TextEditingController();
  String txt = "No input given";

  void setChange() {
    setState(() {
      txt;
    });
  }

  void dispose() {
    // Clean up the controller when the widget is disposed.
    _textContr.dispose();
    super.dispose();
  }

  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Text Display",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
                height: 120,
                padding: EdgeInsets.all(10),
                child: TextFormField(
                    // onChanged: (newText) {
                    //   text = newText;
                    // },
                    controller: _textContr,
                    onSaved: (value) {
                      txt = value!;
                    },
                    maxLines: 3,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                    decoration: InputDecoration(
                        filled: true,
                        labelText: 'Insert Text',
                        labelStyle: TextStyle(fontSize: 18),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        )))),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(0),
              width: 120,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    // ignore: unnecessary_null_comparison
                    if (_textContr.text.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                              "No text Provided",
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                              _textContr.text,
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      );
                    }
                  },
                  child: Text("Display Text",
                      style: TextStyle(fontSize: 18, color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
