import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test1/big_screen.dart';

class Sing extends StatefulWidget {
  const Sing({super.key});

  @override
  State<Sing> createState() => _SingState();
}

bool shopassing = true;
bool shopassingconfirm = true;

class _SingState extends State<Sing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 248, 248, 231),
      body: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Sing Screen',
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
              decoration: InputDecorationfunc('User Name'),
              textInputAction: TextInputAction.next,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecorationfunc('Email'),
              textInputAction: TextInputAction.next,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecorationfunc('Phone Number'),
              textInputAction: TextInputAction.next,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              textInputAction: TextInputAction.next,

              obscureText: shopassing, //مخفی کردن متن وارد شده
              // obscuringCharacter: '*', //تغییر شکل کاراکتر مخفی
              keyboardType: TextInputType.number, //نمایش کیبورد عدد
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ], //فقط نمایش عددdecoration: InputDecorationfunc('Password'),
              decoration: InputDecoration(
                //  hintText: 'Password',
                labelText: 'Password',
                // prefixIcon: Icon(
                // Icons.lock,
                ///), //نمایش ایکون در ابتدای تکست فیلد
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (shopassing) {
                        shopassing = false;
                      } else {
                        (shopassing = true);
                      }
                    });
                  },
                  //اگر جواب مثبت بود  visibility_off_outlined را نشان بده در غیر این صورت : این را نشان بده
                  icon:
                      shopassing
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              textInputAction: TextInputAction.done,

              obscureText: shopassingconfirm, //مخفی کردن متن وارد شده
              // obscuringCharacter: '*', //تغییر شکل کاراکتر مخفی
              keyboardType: TextInputType.number, //نمایش کیبورد عدد
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ], //فقط نمایش عددdecoration: InputDec
              decoration: InputDecoration(
                //  hintText: 'Password',
                labelText: 'Confirm Password',
                // prefixIcon: Icon(
                // Icons.lock,
                ///), //نمایش ایکون در ابتدای تکست فیلد
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (shopassingconfirm) {
                        shopassingconfirm = false;
                      } else {
                        (shopassingconfirm = true);
                      }
                    });
                  },
                  //اگر جواب مثبت بود  visibility_off_outlined را نشان بده در غیر این صورت : این را نشان بده
                  icon:
                      shopassingconfirm
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
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

                  child: Text('Sing in', style: TextStyle(color: Colors.white)),
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
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => BigScreen()),
                    (route) => false,
                  );
                },
                child: (Text(
                  'Login',
                  style: TextStyle(color: Colors.blueAccent),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  InputDecoration InputDecorationfunc(String hinttext) {
    return InputDecoration(
      //  hintText: 'Username',
      labelText: hinttext,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Colors.grey.shade100),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: const Color.fromARGB(255, 9, 9, 9)),
      ),
    );
  }
}
