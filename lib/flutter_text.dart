// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const AdeEntryWidget());
}

//entry Widget

class AdeEntryWidget extends StatelessWidget {
  const AdeEntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //retun material app
    return MaterialApp(
      title: "Ade Application",
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: AdeHomePage(),
    );
  }
}

//AdeHomePage
class AdeHomePage extends StatefulWidget {
  const AdeHomePage({super.key});

  @override
  State<AdeHomePage> createState() => _AdeHomePageState();
}

class _AdeHomePageState extends State<AdeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shalom Test'),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              height: 200,
              child: Text(
                'Welcome to AQSkill',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  wordSpacing: 3,
                ),
              )),
          RichText(
              text: TextSpan(
            text: 'Dont have an account? ',
            style: TextStyle(color: Colors.black, fontSize: 16),
            children: [
              WidgetSpan(child: Icon(Icons.add)),
              TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('sign Up');
                    })
            ],
          ))
        ],
      ),
    );
  }
}
