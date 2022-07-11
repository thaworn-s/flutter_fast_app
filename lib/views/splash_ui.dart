import 'package:fast_app/views/home_ui.dart';
import 'package:flutter/material.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              child: Image.asset(
                'assets/images/cross.png',
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Text(
              'FAST...',
              style: TextStyle(
                fontSize: 70,
                fontFamily: 'Kanit',
                color: Color.fromARGB(255, 45, 45, 45),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
