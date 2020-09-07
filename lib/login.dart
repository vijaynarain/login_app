import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

String number;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter number",
                  labelText: "Number"),
              onChanged: (value) => {number = value},
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            RaisedButton(
              onPressed: () =>
                  {Navigator.pushNamed(context, "/otp"), print(number)},
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.indigo,
            )
          ],
        ),
      ),
    );
  }
}
