import 'dart:async';

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
                color: Colors.amber,
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
                    
                    title: Text(
                      'เจ็บป่วยฉุกเฉินโทร 1669',
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
                      Icon(Icons.phone_android,
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
          Center(
            child: Container(
              child: Image.asset(
                'assets/images/cross.png',
              ),
              height: 200,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 95.0,
              right: 95.0,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'สายด่วน 1669',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 58, 86),
                minimumSize: const Size.fromHeight(
                  80,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    50.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 95.0,
              right: 95.0,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'สายด่วน 1669',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 58, 86),
                minimumSize: const Size.fromHeight(
                  80,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    50.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
