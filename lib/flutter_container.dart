// ignore_for_file: prefer_const_constructors

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
        body: Container(
          height: 100,
          width: 350,
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black, offset: Offset(6.0, 6.0))
            ],
          ),
          child: Text(
            "Am working",
            style: TextStyle(fontSize: 20, color: Colors.yellow),
          ),
        ));
  }
}
