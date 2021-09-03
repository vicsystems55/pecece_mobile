import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return new Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: height * .2),
                    _title(),
                    SizedBox(height: 50),
                    _emailPasswordWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _title() {
  return Center(
      child: Column(
    children: [Image.asset('assets/images/logo.png'), Text('PECECE')],
  ));
}

Widget _emailPasswordWidget() {
  return Column(
    children: <Widget>[
      _entryField("Email"),
      _entryField("Password", isPassword: true),
    ],
  );
}

Widget _entryField(String title, {bool isPassword = false}) {
  return Center(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 400,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text(
            //   title,
            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            // ),
            SizedBox(
              height: 10,
            ),
            TextField(
                obscureText: isPassword,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: title,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                    ),
                  ),
                ))
          ],
        ),
      ),
    ),
  );
}
