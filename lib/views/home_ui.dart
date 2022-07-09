import 'package:fast_app/mode.l/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

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
            'FAST',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/cross.png'
            ),
        ],
      ),
    );
  }
}


