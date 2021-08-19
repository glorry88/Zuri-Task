import 'package:flutter/material.dart';
import 'body.dart';

void main() {
  runApp(PrintName());
}

class PrintName extends StatelessWidget {
  const PrintName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                'Simple Program To Display name',
                // style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: Body(),
        ),
      ),
    );
  }
}
