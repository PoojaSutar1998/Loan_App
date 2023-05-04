import 'package:flutter/material.dart';

import '../Helper/globle style.dart';
import '../Register/register_screen (1).dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => OtpScreen(),
            );
          },
          child: Text("Open OTP Screen"),
        ),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otp = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom,top: 20),
      height: MediaQuery.of(context).size.height * 0.5,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter OTP",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:themeColor),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                otpBox(0),
                otpBox(1),
                otpBox(2),
                otpBox(3),
              ],
            ),
            SizedBox(height: 30),
            MaterialButton(
              color: themeColor,
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Text(
                "Verify",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Resend OTP
              },
              child: Text("Resend OTP",style: TextStyle(color:themeColor,fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }

  Widget otpBox(int position) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextField(
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty) {
            otp = otp.replaceRange(position, position + 1, value);
            if (position < 3) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).unfocus();
            }
          }
        },
      ),
    );
  }
}
