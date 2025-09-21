import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test1/big_screen.dart';
import 'package:test1/screen/sing.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool shopas = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 231),
      body: Center(
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'login screen',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'willcome bak to nike store',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  //  hintText: 'Username',
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 9, 9, 9),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                obscureText: shopas, //مخفی کردن متن وارد شده
                // obscuringCharacter: '*', //تغییر شکل کاراکتر مخفی
                keyboardType: TextInputType.number, //نمایش کیبورد عدد
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ], //فقط نمایش عدد
                decoration: InputDecoration(
                  //  hintText: 'Password',
                  labelText: 'Password',
                  // prefixIcon: Icon(
                  // Icons.lock,
                  ///), //نمایش ایکون در ابتدای تکست فیلد
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (shopas) {
                          shopas = false;
                        } else {
                          (shopas = true);
                        }
                      });
                    },
                    //اگر جواب مثبت بود  visibility_off_outlined را نشان بده در غیر این صورت : این را نشان بده
                    icon:
                        shopas
                            ? Icon(Icons.visibility_off_outlined)
                            : Icon(Icons.visibility_outlined),
                  ),
                  //نمایش ایکون در انتهای تک
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5), //گرد کردن گوشه ها
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 9, 9, 9),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),

                child: (Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blueAccent),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      //بعد از زدن دکمه لاگین دیگر نمیشود به عقب و صفحه ی قبل برگشت
                      MaterialPageRoute(builder: (context) => BigScreen()),
                      (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 100, 249),
                    //  fixedSize:const Size(double.maxFinite,60),
                    fixedSize: Size(double.maxFinite, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),

                    child: Text('Login', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('dont have account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sing()),
                    );
                  },
                  child: (Text(
                    'creat account',
                    style: TextStyle(color: Colors.blueAccent),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
