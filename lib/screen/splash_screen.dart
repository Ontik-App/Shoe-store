import 'package:flutter/material.dart';
import 'package:test1/screen/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // بعد از 3 ثانیه انتقال پیدا می‌کنه
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade300, Colors.blue.shade800],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Image.asset('assets/images/blue2'),
            ),
            Text(
              'Nike Store',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'www.nike.com',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(
            //       context,
            //     ).push(MaterialPageRoute(builder: (context) => Login())); //جابجایی صفحات
            //   },
            //   child: Text('GO'),
            // ),
          ],
        ),
      ),
    );
  }
}
