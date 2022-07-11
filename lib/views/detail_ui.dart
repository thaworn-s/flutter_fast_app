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
            Icons.arrow_back,
          ),
        ),
        title: Center(
          child: Text(
            'FAST',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'images/' + widget.image!,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
