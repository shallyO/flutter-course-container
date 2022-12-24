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
        title: const Text("Ade Application"),
        backgroundColor: Colors.black,
        elevation: 10, 
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black
              ),
              child: Text('Welcome to Shalom App', style: TextStyle(
                color: Colors.white
              ),)
              ),

              ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Am Working",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
            Text(
                "This is a sample text This is a sample text This is a sample textThis is a sample text This is a sample text This is a sample text"),
            //add elevated buttom
            ElevatedButton(
                onPressed: () {
                  print('Button Pressed');

                  //show snackbar
                  const snackBar = SnackBar(
                    content: Text('Yay! A SnackBar!'),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text("Click ME"))
          ],
        ),
      ),
    );
  }
}
