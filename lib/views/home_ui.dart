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
      body: Column(
        children: [
          SizedBox(
            height: 14.0,
          ),
          Center(
            child: Container(
              child: Image.asset('assets/images/cross.png'),
              height: 200,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
           Padding(
              padding: EdgeInsets.only(left: 95.0, right: 95.0),
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
                  minimumSize: const Size.fromHeight(80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
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
