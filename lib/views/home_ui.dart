import 'dart:async';

import 'package:fast_app/main.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                color: Colors.white,
                size: 30.0,
                Icons.search,
              ),
              onPressed: () {}),
        ],
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
          child: Text(
            "FAST",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Card(
              color: Colors.blueGrey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('เจ็บป่วยฉุกเฉินโทร 1669',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        )),
                    subtitle: Text(
                      'โทรฟรี อย่าโทรเล่น...',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.phone_android,
                        size: 30.0,
                        color: Colors.red[700],
                      ),
                      TextButton(
                        child: const Text(
                          'โทร 1669 ',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: Colors.white,
                ),
                height: 90,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      width: 90.0,
                    ),
                    // Text(
                    //   'เรียกรถพยาบาย',
                    //   style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 15,
                        
                    //   ),
                    // ),
                    SizedBox(
                      height: 15.0,
                    ),
                    // Image.asset(
                    //   'assets/images/fast1.png',
                    //   height: 32.0,
                    // ),
                  ],
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: Colors.red,
                ),
                height: 90,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      width: 90.0,
                    ),
                    // Text(
                    //   'เรียกรถพยาบาย',
                    //   style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 15,
                        
                    //   ),
                    // ),
                    SizedBox(
                      height: 15.0,
                    ),
                    // Image.asset(
                    //   'assets/images/fast1.png',
                    //   height: 32.0,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
