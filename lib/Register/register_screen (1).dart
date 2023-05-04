import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../../Helper/SizedConfig.dart';
import '../../Helper/globle style.dart';

import '../Dashboard/home_screen (3).dart';
import '../Helper/commen_textField.dart';
import '../HomePage.dart';

class RegisterScreen extends StatefulWidget {

  const RegisterScreen({Key? key,})
      : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  String image = "assets/images/img_2.png";
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController user = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  TextEditingController emailId = TextEditingController();
  FocusNode userNameFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  bool agreeToTerms = false;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor:themeColor,
        elevation: 0,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: themeColor,
              ),
              width: SizeConfig.screenWidth,
              padding: EdgeInsets.only(bottom: 30, top: 10),

              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(
                      height: SizeConfig.screenHeight * 0.01,
                    ),
                    Text(
                      "User Registration",
                      style: KH3.copyWith(color: KWHITE_COLOR),
                    )
                  ]),
            ),
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 0.74,
              padding: EdgeInsets.symmetric(horizontal: 20),
              // color: kPrimaryColor,
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all( 10.0),
                    child: Text(
                      "Enter Your Name",
                      style: KH6_SemiBold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: KInputRadius,
                      color: kPrimaryColor,
                      // border: Border.all(color: kPrimaryColor)
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          flex:5,
                          child: TextFiledBorderWidget(
                            controller: mobile,
                            isEnabled: true,
                            label: 'Enter Your Name',
                            validator: (String) {},
                            width: SizeConfig.screenWidth,
                            inputType: TextInputType.text,
                            focusNode: passwordFocus,

                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      "Enter email id",
                      style: KH6_SemiBold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFiledBorderWidget(
                    controller: emailId,
                    isEnabled: true,
                    label: 'Enter email id',
                    validator: (String) {},
                    width: SizeConfig.screenWidth,
                    inputType: TextInputType.text,
                    focusNode: userNameFocus,
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      "Enter Mobile number",
                      style: KH6_SemiBold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFiledBorderWidget(
                    controller: name,
                    isEnabled: true,
                    // isEnabled: icContactVerified,
                    label: 'Enter Mobile number',
                    validator: (String) {},
                    width: SizeConfig.screenWidth,
                    inputType: TextInputType.text,
                    focusNode: passwordFocus,
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      "Enter Address",
                      style: KH6_SemiBold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFiledBorderWidget(
                    controller: password,
                    // isEnabled: icContactVerified,
                    isEnabled: true,
                    label: 'Enter Address',
                    validator: (String) {},
                    width: SizeConfig.screenWidth,
                    inputType: TextInputType.text,
                    focusNode: passwordFocus,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: SizeConfig.screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: SizeConfig().getTextSize(1.1),
                          child: Checkbox(
                            value: this.agreeToTerms,
                            onChanged: (bool? value) {
                              setState(() {
                                this.agreeToTerms = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          "I agree to the terms and conditions",
                          style: KH7,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () async {
                        //Redirect to Dashboard / Home activity.
                        await Future.delayed(Duration.zero);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:themeColor,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
