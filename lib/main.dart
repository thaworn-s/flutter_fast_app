import 'package:fast_app/views/home_ui.dart';
import 'package:fast_app/views/splash_ui.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}