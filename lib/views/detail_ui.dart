import 'package:flutter/material.dart';

class DetialUI extends StatefulWidget {
  String? name;
  String? mobile;
  String? image;

  DetialUI({
    this.name,
    this.mobile,
    this.image,
  });

  @override
  State<DetialUI> createState() => _DetialUIState();
}

class _DetialUIState extends State<DetialUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'FAST',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/' + widget.image!,
            ),
          ],
        ),
      ),
    );
  }
}
