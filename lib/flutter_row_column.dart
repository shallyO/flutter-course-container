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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("How are you"),
                Text("How are you"),
                Text("How are you"),
              ],
            ),
            Text("This is another column")
          ],
        ),
      ),
    );
  }
}
