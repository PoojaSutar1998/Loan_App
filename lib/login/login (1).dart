import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../Dashboard/otpScreen.dart';
import '../Helper/SizedConfig.dart';
import '../Helper/commen_textField.dart';
import '../Helper/globle style.dart';
import '../Register/register_screen (1).dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String image = "assets/images/img_2.png";
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String otp = '';
  bool isOtpSend = false;
  bool isOtpVerified=true;

  FocusNode userNameFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidth,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color:themeColor,
                ),
                width: SizeConfig.screenWidth,
                padding: EdgeInsets.only(bottom: 30, top: 10),

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: SizeConfig.screenWidth * 0.3,
                          height: SizeConfig.screenHeight * 0.15,
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.screenWidth * 0.02,
                            vertical: SizeConfig.screenHeight * 0.02,
                          ),
                          ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.01,
                      ),
                      Text(
                        "User Login",
                        style: KH3.copyWith(color: KWHITE_COLOR),
                      )
                    ]),
              ),
              SingleChildScrollView(
                child:
                Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight * 0.62,
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.screenHeight * 0.01,
                      horizontal: SizeConfig.screenWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          "Enter Mobile Number",
                          style: KH6_SemiBold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFiledBorderWidget(
                        controller: userName,
                        isEnabled: true,
                        label: 'Enter mobile number',
                        validator: (String) {},
                        width: SizeConfig.screenWidth,
                        inputType: TextInputType.text,
                        focusNode: userNameFocus,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () async {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) => OtpScreen(),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 250,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Text(
                              'Send OTP',
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
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }

  // Widget verifyOtpUi(){
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('OTP Verification'),
  //     ),
  //     body: Padding(
  //       padding: EdgeInsets.all(16.0),
  //       child: Form(
  //         key: _formKey,
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               'Enter the OTP sent to your mobile number',
  //               style: TextStyle(fontSize: 16),
  //             ),
  //             SizedBox(height: 16),
  //             TextFormField(
  //               keyboardType: TextInputType.number,
  //               decoration: InputDecoration(
  //                 labelText: 'Enter OTP',
  //                 border: OutlineInputBorder(),
  //               ),
  //               onChanged: (value) {
  //                 setState(() {
  //                   _otp = value;
  //                 });
  //               },
  //               validator: (value) {
  //                 if (value == null || value.isEmpty) {
  //                   return 'Please enter OTP';
  //                 }
  //                 return null;
  //               },
  //             ),
  //             SizedBox(height: 16),
  //             ElevatedButton(
  //               onPressed: () {
  //                 if (_formKey.currentState!.validate()) {
  //                   // TODO: Verify OTP.
  //                 }
  //               },
  //               child: Text('Verify OTP'),
  //             ),
  //             SizedBox(height: 16),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text('Didn\'t receive OTP?'),
  //                 TextButton(
  //                   onPressed: () {
  //                     // TODO: Resend OTP.
  //                   },
  //                   child: Text('Resend OTP'),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }




}








