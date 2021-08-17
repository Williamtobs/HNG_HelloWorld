import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textContr = new TextEditingController();
  // ignore: deprecated_member_use

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
                    onSaved: (value) {},
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
              margin: EdgeInsets.only(top: 5),
              color: Colors.blue,
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text the user has entered by using the
                          // TextEditingController.
                          content: Text(_textContr.text),
                        );
                      },
                    );
                  },
                  child: Text("Display Text",
                      style: TextStyle(fontSize: 20, color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
