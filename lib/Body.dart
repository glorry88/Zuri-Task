import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void printName() {
    setState(() {
      Text(myController.text);
    });
  }

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Image(
          image: AssetImage('assets/zuri.jpeg'),
          height: 80,
          width: 150,
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Text(
            'Let\'s play a simple game',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                letterSpacing: 1.5,
                fontFamily: 'OpenSansCondensed-Light',
                fontWeight: FontWeight.bold),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: 'Enter your full name',
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: 50,
        // ),
        Container(
          child: GestureDetector(
            onTap: () {
              printName();
              print('pressed');
            },
            child: Center(
              child: Text(
                'Print my name',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          height: 50,
          width: 200,
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: Container(
            child: Text(
              myController.text,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'OpenSansCondensed-Light',
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                child: new InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Visit ',
                      style: TextStyle(
                        fontSize: 20
                      ),),
                      new Text(
                        'ZURI',
                        style: TextStyle(
                          fontFamily: 'OpenSansCondensed-LightItalic',
                          fontSize: 20,
                            color: Colors.deepOrange,
                          decoration: TextDecoration.underline
                        ),
                      ),
                    ],
                  ),
                  onTap: () => launch('https://internship.zuri.team'),
                  // onHover: (){
                  //
                  // },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
