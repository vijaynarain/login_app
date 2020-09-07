import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

String otp;

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Otp Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter otp",
                  labelText: "OTP"),
              onChanged: (value) => {otp = value},
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            RaisedButton(
              onPressed: () => {print(otp)},
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
