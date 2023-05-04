// //
// // import 'package:flutter/material.dart';
// // import 'package:getwidget/types/gf_loader_type.dart';
// // import 'package:provider/provider.dart';
// // import 'package:flutter_beep/flutter_beep.dart';
// // import '../../../../Helper/SizedConfig.dart';
// // import '../../../../Helper/globle style.dart';
// // import '../BotProvider.dart';
// // import 'package:assets_audio_player/assets_audio_player.dart';
// // import 'package:getwidget/getwidget.dart';
// // import '../Helper/animation.dart';
// // import '../Helper/commen_textField.dart';
// // import '../Helper/send_button_component.dart';
// // import 'Dashboard/Emi_calculator.dart';
// //
// //
// // class CheckCriteriaWithBot extends StatefulWidget {
// //   const CheckCriteriaWithBot({Key? key}) : super(key: key);
// //
// //   @override
// //   State<CheckCriteriaWithBot> createState() => _CheckCriteriaWithBotState();
// // }
// //
// // class _CheckCriteriaWithBotState extends State<CheckCriteriaWithBot> {
// //   late BotProvider botProvider1;
// //
// //   late AssetsAudioPlayer audioPlayer;
// //
// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     audioPlayer = AssetsAudioPlayer();
// //     receiveSound();
// //     botProvider1 = Provider.of<BotProvider>(context, listen: false);
// //   }
// //
// //   sendSound() async {
// //     FlutterBeep.beep();
// //   }
// //
// //   receiveSound() async {
// //     Future.delayed(Duration.zero, () {
// //       audioPlayer.open(
// //         Audio(
// //           'assets/audios/sound_receive.mp3',
// //         ),
// //       );
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Container(
// //         margin: EdgeInsets.symmetric(horizontal: 16),
// //         child: SingleChildScrollView(
// //           child: Consumer<BotProvider>(builder: (context, botProvider, child) {
// //             return Column(
// //               children: [
// //                 //Top componenet
// //                 Container(
// //                   child: Column(
// //                     children: [
// //                       Container(
// //                         width: MediaQuery.of(context).size.width,
// //                         height: SizeConfig.screenWidth * 0.5,
// //                         child: Image.asset('assets/images/hello.gif'),
// //                       ),
// //                       Container(
// //                         width: MediaQuery.of(context).size.width,
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.center,
// //                           children: [
// //                             SlideFadeTransition(
// //                               delayStart: Duration(milliseconds: 500),
// //                               animationDuration: Duration(milliseconds: 1200),
// //                               child: const Text(
// //                                   "Welcome, John",
// //                                   textAlign: TextAlign.center,
// //                                   style: TextStyle(
// //                                       fontSize: 20,
// //                                       color: Colors.blueGrey,
// //                                       fontWeight: FontWeight.bold
// //                                   )
// //                               ),
// //                             ),
// //                             SlideFadeTransition(
// //                               delayStart: Duration(milliseconds: 1000),
// //                               animationDuration: Duration(milliseconds: 700),
// //                               child: Text(
// //                                 textAlign: TextAlign.center,
// //                                 "Let's start, to check your eligible critria...",
// //                                 style: KH6.copyWith(
// //                                   height: 1.5,
// //                                 ),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //
// //
// //
// //                 SlideFadeTransition(
// //                     delayStart: Duration(milliseconds: 1200),
// //                     animationDuration: Duration(milliseconds: 1200),
// //                     // curve: Curves.elasticOut,
// //                     // offset: -2.5,
// //                     child: Container(
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           const SizedBox(
// //                             height: 20,
// //                           ),
// //                           SlideFadeTransition(
// //                               delayStart: Duration(milliseconds: 200),
// //                               animationDuration: Duration(milliseconds: 1200),
// //                               // curve: Curves.elasticOut,
// //                               // offset: -2.5,
// //                               child: Text(
// //                                 "Let's Enter your information such as address, date of birth,salary for checking your criteria...",
// //                                 style: KH7_SemiBold.copyWith(height: 1.5),
// //                               )),
// //                           Container(
// //                             width: SizeConfig.screenWidth,
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 SizedBox(
// //                                   height: 20,
// //                                 ),
// //                                 Text(
// //                                   "Please you enter district here?",
// //                                   style: KH7.copyWith(height: 1.5),
// //                                 ),
// //                                 SizedBox(
// //                                   height: 7,
// //                                 ),
// //                                 Row(
// //                                   mainAxisAlignment:
// //                                   MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                     Container(
// //                                       width: botProvider.districtTextVisible
// //                                           ? SizeConfig.screenWidth * 0.9
// //                                           : SizeConfig.screenWidth * 0.7,
// //                                       child: TextFiledBorderWidget(
// //                                         controller: botProvider.districttxt,
// //                                         isEnabled: true,
// //                                         label: 'Enter District',
// //                                         validator: (String) {},
// //                                         width: SizeConfig.screenWidth,
// //                                         inputType: TextInputType.text,
// //                                         focusNode: botProvider.courseFocus,
// //                                         onChnage: (String? value) {
// //                                           setState(() {
// //                                             botProvider.districtButtonVisible = true;
// //                                             botProvider.districtTextVisible = false;
// //
// //                                           });
// //                                         },
// //                                       ),
// //                                     ),
// //                                     Visibility(
// //                                         visible:
// //                                         botProvider.districtButtonVisible ? true : false,
// //                                         child: InkWell(
// //                                             onTap: () {
// //                                               setState(() {
// //                                                 sendSound();
// //                                                 botProvider.districtButtonVisible = false;
// //                                                 botProvider.districtTextVisible = true;
// //                                                 botProvider.cityWidgetVisible = true;
// //                                                 receiveSound();
// //                                               });
// //                                             },
// //                                             child: SendButtonComponent()))
// //                                   ],
// //                                 ),
// //                                 SizedBox(
// //                                   height: 20,
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //
// //                           SlideFadeTransition(
// //                             delayStart: Duration(milliseconds: 300),
// //                             animationDuration: Duration(milliseconds: 1200),
// //                             // curve: Curves.elasticOut,
// //                             // offset: -2.5,
// //
// //                             child: Visibility(
// //                               visible: botProvider.cityWidgetVisible ? true : false,
// //                               child: Container(
// //                                 width: SizeConfig.screenWidth,
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     SizedBox(
// //                                       height: 20,
// //                                     ),
// //                                     Text(
// //                                       "okk!!!...",
// //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// //                                     ),
// //                                     Text(
// //                                       "Please Enter your city",
// //                                       style: KH7.copyWith(height: 1.5),
// //                                     ),
// //                                     SizedBox(
// //                                       height: 7,
// //                                     ),
// //                                     Row(
// //                                       mainAxisAlignment:
// //                                       MainAxisAlignment.spaceBetween,
// //                                       children: [
// //                                         Container(
// //                                           width: botProvider.cityTextVisible
// //                                               ? SizeConfig.screenWidth * 0.9
// //                                               : SizeConfig.screenWidth * 0.7,
// //                                           child: TextFiledBorderWidget(
// //                                             controller: botProvider.dateofbirthTxt,
// //                                             isEnabled: true,
// //                                             label: 'Enter City',
// //                                             validator: (String) {},
// //                                             width: SizeConfig.screenWidth,
// //                                             inputType: TextInputType.text,
// //                                             focusNode: botProvider.dobFocus,
// //                                             onChnage: (String? value) {
// //                                               setState(() {
// //                                                 botProvider.cityButtonVisible = true;
// //                                                 botProvider.cityTextVisible = false;
// //                                               });
// //                                             },
// //                                           ),
// //                                         ),
// //                                         Visibility(
// //                                             visible:
// //                                             botProvider.cityButtonVisible ? true : false,
// //                                             child: InkWell(
// //                                                 onTap: () {
// //                                                   setState(() {
// //                                                     sendSound();
// //                                                     botProvider.cityButtonVisible = false;
// //                                                     botProvider.cityTextVisible = true;
// //                                                     botProvider.dateofbirthWidgetVisible = true;
// //                                                     receiveSound();
// //                                                   });
// //                                                 },
// //                                                 child: SendButtonComponent()))
// //                                       ],
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //
// //                           SlideFadeTransition(
// //                             delayStart: Duration(milliseconds: 300),
// //                             animationDuration: Duration(milliseconds: 1200),
// //                             // curve: Curves.elasticOut,
// //                             // offset: -2.5,
// //
// //                             child: Visibility(
// //                               visible: botProvider.dateofbirthWidgetVisible ? true : false,
// //                               child: Container(
// //                                 width: SizeConfig.screenWidth,
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     SizedBox(
// //                                       height: 20,
// //                                     ),
// //                                     Text(
// //                                       "Great!!!...",
// //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// //                                     ),
// //                                     Text(
// //                                       "Please Enter your date of birth",
// //                                       style: KH7.copyWith(height: 1.5),
// //                                     ),
// //                                     SizedBox(
// //                                       height: 7,
// //                                     ),
// //                                     Row(
// //                                       mainAxisAlignment:
// //                                       MainAxisAlignment.spaceBetween,
// //                                       children: [
// //                                         Container(
// //                                           width: botProvider.dateofbirthTextVisible
// //                                               ? SizeConfig.screenWidth * 0.9
// //                                               : SizeConfig.screenWidth * 0.7,
// //                                           child: TextFiledBorderWidget(
// //                                             controller: botProvider.dateofbirthTxt,
// //                                             isEnabled: true,
// //                                             label: 'Enter Date Of Birth',
// //                                             validator: (String) {},
// //                                             width: SizeConfig.screenWidth,
// //                                             inputType: TextInputType.text,
// //                                             focusNode: botProvider.dobFocus,
// //                                             onChnage: (String? value) {
// //                                               setState(() {
// //                                                 botProvider.dateofbirthButtonVisible = true;
// //                                                 botProvider.dateofbirthTextVisible = false;
// //                                               });
// //                                             },
// //                                           ),
// //                                         ),
// //                                         Visibility(
// //                                             visible:
// //                                             botProvider.dateofbirthButtonVisible ? true : false,
// //                                             child: InkWell(
// //                                                 onTap: () {
// //                                                   setState(() {
// //                                                     sendSound();
// //                                                     botProvider.dateofbirthButtonVisible = false;
// //                                                     botProvider.dateofbirthTextVisible = true;
// //                                                     botProvider.employementWidgetVisible = true;
// //                                                     receiveSound();
// //                                                   });
// //                                                 },
// //                                                 child: SendButtonComponent()))
// //                                       ],
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //
// //                           SlideFadeTransition(
// //                             delayStart: Duration(milliseconds: 300),
// //                             animationDuration: Duration(milliseconds: 1200),
// //                             // curve: Curves.elasticOut,
// //                             // offset: -2.5,
// //
// //                             child: Visibility(
// //                               visible: botProvider.employementWidgetVisible ? true : false,
// //                               child: Container(
// //                                 width: SizeConfig.screenWidth,
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     SizedBox(
// //                                       height: 20,
// //                                     ),
// //
// //                                     Text(
// //                                       "okk!!!...",
// //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// //                                     ),
// //                                     Text(
// //                                       "Please Enter Employement Type",
// //                                       style: KH7.copyWith(height: 1.5),
// //                                     ),
// //                                     SizedBox(
// //                                       height: 7,
// //                                     ),
// //                                     Row(
// //                                       mainAxisAlignment:
// //                                       MainAxisAlignment.spaceBetween,
// //                                       children: [
// //                                         Container(
// //                                           width: botProvider.employementTextVisible
// //                                               ? SizeConfig.screenWidth * 0.9
// //                                               : SizeConfig.screenWidth * 0.7,
// //                                           child: TextFiledBorderWidget(
// //                                             controller: botProvider.employementTxt,
// //                                             isEnabled: true,
// //                                             label: 'Enter Employement Type',
// //                                             validator: (String) {},
// //                                             width: SizeConfig.screenWidth,
// //                                             inputType: TextInputType.text,
// //                                             focusNode: botProvider.employement,
// //                                             onChnage: (String? value) {
// //                                               setState(() {
// //                                                 botProvider.employementtypeButtonVisible = true;
// //                                                 botProvider.employementTextVisible = false;
// //                                               });
// //                                             },
// //                                           ),
// //                                         ),
// //                                         Visibility(
// //                                             visible:
// //                                             botProvider.employementtypeButtonVisible ? true : false,
// //                                             child: InkWell(
// //                                                 onTap: () {
// //                                                   setState(() {
// //                                                     sendSound();
// //                                                     botProvider.employementtypeButtonVisible = false;
// //                                                     botProvider.employementTextVisible = true;
// //                                                     botProvider.monthlyWidgetVisible = true;
// //                                                     receiveSound();
// //                                                   });
// //                                                 },
// //                                                 child: SendButtonComponent()))
// //                                       ],
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //
// //
// //                           SlideFadeTransition(
// //                             delayStart: Duration(milliseconds: 300),
// //                             animationDuration: Duration(milliseconds: 1200),
// //                             // curve: Curves.elasticOut,
// //                             // offset: -2.5,
// //
// //                             child: Visibility(
// //                               visible: botProvider.monthlyWidgetVisible ? true : false,
// //                               child: Container(
// //                                 width: SizeConfig.screenWidth,
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     SizedBox(
// //                                       height: 20,
// //                                     ),
// //                                     Text(
// //                                       "Ok!!!...",
// //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// //                                     ),
// //                                     Text(
// //                                       "Please Enter Monthly Income",
// //                                       style: KH7.copyWith(height: 1.5),
// //                                     ),
// //                                     SizedBox(
// //                                       height: 7,
// //                                     ),
// //                                     Row(
// //                                       mainAxisAlignment:
// //                                       MainAxisAlignment.spaceBetween,
// //                                       children: [
// //                                         Container(
// //                                           width: botProvider.monthalyTextVisible
// //                                               ? SizeConfig.screenWidth * 0.9
// //                                               : SizeConfig.screenWidth * 0.7,
// //                                           child:
// //
// //                                           Slider(
// //                                             value: botProvider.monthlyIncome,
// //                                             min: 0,
// //                                             max: 10000,
// //                                             onChanged: (newValue) {
// //                                               setState(() {
// //                                                 botProvider.monthlyIncome = newValue;
// //                                                 botProvider.incomerangeButtonVisible = true;
// //                                                 // botProvider.employementTextVisible = false;
// //                                               });
// //                                             },
// //                                             divisions: 100,
// //                                             label: botProvider.monthlyIncome.toString(),
// //                                             activeColor: Colors.blueGrey, // Set the color of the active portion of the slider
// //                                             inactiveColor: Colors.grey, // Set the color of the inactive portion of the slider
// //                                           ),
// //
// //
// //                                         ),
// //                                         Visibility(
// //                                             visible:
// //                                             botProvider.incomerangeButtonVisible ? true : false,
// //                                             child: InkWell(
// //                                                 onTap: () {
// //                                                   setState(() {
// //                                                     sendSound();
// //                                                     botProvider.incomerangeButtonVisible = false;
// //                                                     botProvider.employementTextVisible = true;
// //                                                     botProvider.existingloanWidgetVisible=true;
// //                                                     receiveSound();
// //                                                   });
// //                                                 },
// //                                                 child: SendButtonComponent()))
// //                                       ],
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //
// //                           SlideFadeTransition(
// //                             delayStart: Duration(milliseconds: 300),
// //                             animationDuration: Duration(milliseconds: 1200),
// //                             // curve: Curves.elasticOut,
// //                             // offset: -2.5,
// //
// //                             child: Visibility(
// //                               visible: botProvider.existingloanWidgetVisible ? true : false,
// //                               child: Container(
// //                                 width: SizeConfig.screenWidth,
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     SizedBox(
// //                                       height: 20,
// //                                     ),
// //                                     Text(
// //                                       "Great!!!...",
// //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// //                                     ),
// //                                     Text(
// //                                       "Now, Enter you have any existing loan",
// //                                       style: KH7.copyWith(height: 1.5),
// //                                     ),
// //                                     SizedBox(
// //                                       height: 7,
// //                                     ),
// //                                     Column(
// //                                       children: [
// //                                         Container(
// //                                           width: botProvider.existingtextvisible
// //                                               ? SizeConfig.screenWidth * 0.9
// //                                               : SizeConfig.screenWidth * 0.7,
// //                                           child:
// //                                           Container(
// //                                             padding: EdgeInsets.symmetric(horizontal: 20.0),
// //                                             margin: EdgeInsets.only(top: 20.0),
// //                                             child: GridView.count(
// //                                               shrinkWrap: true,
// //                                               crossAxisCount: 2,
// //                                               childAspectRatio: 3,
// //                                               mainAxisSpacing: 10.0,
// //                                               crossAxisSpacing: 10.0,
// //                                               children: [
// //                                                 CheckboxListTile(
// //                                                   title: Text('Home Loan'),
// //                                                   value: botProvider.homeLoanChecked,
// //                                                   onChanged: (newValue) {
// //                                                     setState(() {
// //                                                       botProvider.homeLoanChecked = newValue!;
// //                                                     });
// //                                                   },
// //                                                 ),
// //                                                 CheckboxListTile(
// //                                                   title: Text('Bike Loan'),
// //                                                   value: botProvider.bikeLoanChecked,
// //                                                   onChanged: (newValue) {
// //                                                     setState(() {
// //                                                       botProvider.bikeLoanChecked = newValue!;
// //                                                     });
// //                                                   },
// //                                                 ),
// //                                                 CheckboxListTile(
// //                                                   title: Text('Car Loan'),
// //                                                   value: botProvider.carLoanChecked,
// //                                                   onChanged: (newValue) {
// //                                                     setState(() {
// //                                                       botProvider.carLoanChecked = newValue!;
// //                                                     });
// //                                                   },
// //                                                 ),
// //                                                 CheckboxListTile(
// //                                                   title: Text('Personal Loan'),
// //                                                   value: botProvider.personalLoanChecked,
// //                                                   onChanged: (newValue) {
// //                                                     setState(() {
// //                                                       botProvider.personalLoanChecked = newValue!;
// //                                                     });
// //                                                   },
// //                                                 ),
// //                                                 CheckboxListTile(
// //                                                   title: Text('Other'),
// //                                                   value: botProvider.otherLoanChecked,
// //                                                   onChanged: (newValue) {
// //                                                     setState(() {
// //                                                       botProvider.otherLoanChecked = newValue!;
// //                                                     });
// //                                                   },
// //                                                 ),
// //
// //                                               ],
// //                                             ),
// //                                           ),
// //
// //                                         ),
// //                                       ],
// //                                     ),
// //                                     Visibility(
// //                                         visible:
// //                                         botProvider.otherLoanChecked ? true : false,
// //                                         child: InkWell(
// //                                             onTap: () {
// //                                               setState(() {
// //                                                 sendSound();
// //                                                 botProvider.cityButtonVisible = false;
// //                                                 botProvider.cityTextVisible = true;
// //                                                 botProvider.dateofbirthWidgetVisible = true;
// //                                                 receiveSound();
// //                                               });
// //                                             },
// //                                             child: SendButtonComponent())),
// //
// //                                     Visibility(
// //                                       visible: botProvider.cityTextVisible == true ? true :false,
// //                                       child: InkWell(
// //                                           onTap: () {
// //                                             setState(() {
// //                                               sendSound();
// //                                               botProvider.finishButtonVisible =true;
// //                                               receiveSound();
// //                                             });
// //                                           },
// //                                           child: SendButtonComponent()),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //
// //                           Visibility(
// //                             visible: botProvider.finishButtonVisible == true ? true :false,
// //                             child: Column(
// //                               children: [
// //                                 Text(
// //                                   "You are eligible for loan",
// //                                   textAlign: TextAlign.center,
// //                                   style: KH6.copyWith(
// //                                     height: 1.5,
// //                                   ),
// //                                 ),
// //
// //                                 Text(
// //                                   "You can get loan according to your eligible criteria",
// //                                   style: KH7.copyWith(height: 1.5,),
// //                                 ),
// //                               //
// // // import 'package:flutter/material.dart';
// // // import 'package:getwidget/types/gf_loader_type.dart';
// // // import 'package:provider/provider.dart';
// // // import 'package:flutter_beep/flutter_beep.dart';
// // // import '../../../../Helper/SizedConfig.dart';
// // // import '../../../../Helper/globle style.dart';
// // // import '../BotProvider.dart';
// // // import 'package:assets_audio_player/assets_audio_player.dart';
// // // import 'package:getwidget/getwidget.dart';
// // // import '../Helper/animation.dart';
// // // import '../Helper/commen_textField.dart';
// // // import '../Helper/send_button_component.dart';
// // // import 'Dashboard/Emi_calculator.dart';
// // //
// // //
// // // class CheckCriteriaWithBot extends StatefulWidget {
// // //   const CheckCriteriaWithBot({Key? key}) : super(key: key);
// // //
// // //   @override
// // //   State<CheckCriteriaWithBot> createState() => _CheckCriteriaWithBotState();
// // // }
// // //
// // // class _CheckCriteriaWithBotState extends State<CheckCriteriaWithBot> {
// // //   late BotProvider botProvider1;
// // //
// // //   late AssetsAudioPlayer audioPlayer;
// // //
// // //   @override
// // //   void initState() {
// // //     // TODO: implement initState
// // //     super.initState();
// // //     audioPlayer = AssetsAudioPlayer();
// // //     receiveSound();
// // //     botProvider1 = Provider.of<BotProvider>(context, listen: false);
// // //   }
// // //
// // //   sendSound() async {
// // //     FlutterBeep.beep();
// // //   }
// // //
// // //   receiveSound() async {
// // //     Future.delayed(Duration.zero, () {
// // //       audioPlayer.open(
// // //         Audio(
// // //           'assets/audios/sound_receive.mp3',
// // //         ),
// // //       );
// // //     });
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white,
// // //       body: Container(
// // //         margin: EdgeInsets.symmetric(horizontal: 16),
// // //         child: SingleChildScrollView(
// // //           child: Consumer<BotProvider>(builder: (context, botProvider, child) {
// // //             return Column(
// // //               children: [
// // //                 //Top componenet
// // //                 Container(
// // //                   child: Column(
// // //                     children: [
// // //                       Container(
// // //                         width: MediaQuery.of(context).size.width,
// // //                         height: SizeConfig.screenWidth * 0.5,
// // //                         child: Image.asset('assets/images/hello.gif'),
// // //                       ),
// // //                       Container(
// // //                         width: MediaQuery.of(context).size.width,
// // //                         child: Column(
// // //                           crossAxisAlignment: CrossAxisAlignment.center,
// // //                           children: [
// // //                             SlideFadeTransition(
// // //                               delayStart: Duration(milliseconds: 500),
// // //                               animationDuration: Duration(milliseconds: 1200),
// // //                               child: const Text(
// // //                                   "Welcome, John",
// // //                                   textAlign: TextAlign.center,
// // //                                   style: TextStyle(
// // //                                       fontSize: 20,
// // //                                       color: Colors.blueGrey,
// // //                                       fontWeight: FontWeight.bold
// // //                                   )
// // //                               ),
// // //                             ),
// // //                             SlideFadeTransition(
// // //                               delayStart: Duration(milliseconds: 1000),
// // //                               animationDuration: Duration(milliseconds: 700),
// // //                               child: Text(
// // //                                 textAlign: TextAlign.center,
// // //                                 "Let's start, to check your eligible critria...",
// // //                                 style: KH6.copyWith(
// // //                                   height: 1.5,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //
// // //
// // //
// // //                 SlideFadeTransition(
// // //                     delayStart: Duration(milliseconds: 1200),
// // //                     animationDuration: Duration(milliseconds: 1200),
// // //                     // curve: Curves.elasticOut,
// // //                     // offset: -2.5,
// // //                     child: Container(
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           const SizedBox(
// // //                             height: 20,
// // //                           ),
// // //                           SlideFadeTransition(
// // //                               delayStart: Duration(milliseconds: 200),
// // //                               animationDuration: Duration(milliseconds: 1200),
// // //                               // curve: Curves.elasticOut,
// // //                               // offset: -2.5,
// // //                               child: Text(
// // //                                 "Let's Enter your information such as address, date of birth,salary for checking your criteria...",
// // //                                 style: KH7_SemiBold.copyWith(height: 1.5),
// // //                               )),
// // //                           Container(
// // //                             width: SizeConfig.screenWidth,
// // //                             child: Column(
// // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                               children: [
// // //                                 SizedBox(
// // //                                   height: 20,
// // //                                 ),
// // //                                 Text(
// // //                                   "Please you enter district here?",
// // //                                   style: KH7.copyWith(height: 1.5),
// // //                                 ),
// // //                                 SizedBox(
// // //                                   height: 7,
// // //                                 ),
// // //                                 Row(
// // //                                   mainAxisAlignment:
// // //                                   MainAxisAlignment.spaceBetween,
// // //                                   children: [
// // //                                     Container(
// // //                                       width: botProvider.districtTextVisible
// // //                                           ? SizeConfig.screenWidth * 0.9
// // //                                           : SizeConfig.screenWidth * 0.7,
// // //                                       child: TextFiledBorderWidget(
// // //                                         controller: botProvider.districttxt,
// // //                                         isEnabled: true,
// // //                                         label: 'Enter District',
// // //                                         validator: (String) {},
// // //                                         width: SizeConfig.screenWidth,
// // //                                         inputType: TextInputType.text,
// // //                                         focusNode: botProvider.courseFocus,
// // //                                         onChnage: (String? value) {
// // //                                           setState(() {
// // //                                             botProvider.districtButtonVisible = true;
// // //                                             botProvider.districtTextVisible = false;
// // //
// // //                                           });
// // //                                         },
// // //                                       ),
// // //                                     ),
// // //                                     Visibility(
// // //                                         visible:
// // //                                         botProvider.districtButtonVisible ? true : false,
// // //                                         child: InkWell(
// // //                                             onTap: () {
// // //                                               setState(() {
// // //                                                 sendSound();
// // //                                                 botProvider.districtButtonVisible = false;
// // //                                                 botProvider.districtTextVisible = true;
// // //                                                 botProvider.cityWidgetVisible = true;
// // //                                                 receiveSound();
// // //                                               });
// // //                                             },
// // //                                             child: SendButtonComponent()))
// // //                                   ],
// // //                                 ),
// // //                                 SizedBox(
// // //                                   height: 20,
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //
// // //                           SlideFadeTransition(
// // //                             delayStart: Duration(milliseconds: 300),
// // //                             animationDuration: Duration(milliseconds: 1200),
// // //                             // curve: Curves.elasticOut,
// // //                             // offset: -2.5,
// // //
// // //                             child: Visibility(
// // //                               visible: botProvider.cityWidgetVisible ? true : false,
// // //                               child: Container(
// // //                                 width: SizeConfig.screenWidth,
// // //                                 child: Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: [
// // //                                     SizedBox(
// // //                                       height: 20,
// // //                                     ),
// // //                                     Text(
// // //                                       "okk!!!...",
// // //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// // //                                     ),
// // //                                     Text(
// // //                                       "Please Enter your city",
// // //                                       style: KH7.copyWith(height: 1.5),
// // //                                     ),
// // //                                     SizedBox(
// // //                                       height: 7,
// // //                                     ),
// // //                                     Row(
// // //                                       mainAxisAlignment:
// // //                                       MainAxisAlignment.spaceBetween,
// // //                                       children: [
// // //                                         Container(
// // //                                           width: botProvider.cityTextVisible
// // //                                               ? SizeConfig.screenWidth * 0.9
// // //                                               : SizeConfig.screenWidth * 0.7,
// // //                                           child: TextFiledBorderWidget(
// // //                                             controller: botProvider.dateofbirthTxt,
// // //                                             isEnabled: true,
// // //                                             label: 'Enter City',
// // //                                             validator: (String) {},
// // //                                             width: SizeConfig.screenWidth,
// // //                                             inputType: TextInputType.text,
// // //                                             focusNode: botProvider.dobFocus,
// // //                                             onChnage: (String? value) {
// // //                                               setState(() {
// // //                                                 botProvider.cityButtonVisible = true;
// // //                                                 botProvider.cityTextVisible = false;
// // //                                               });
// // //                                             },
// // //                                           ),
// // //                                         ),
// // //                                         Visibility(
// // //                                             visible:
// // //                                             botProvider.cityButtonVisible ? true : false,
// // //                                             child: InkWell(
// // //                                                 onTap: () {
// // //                                                   setState(() {
// // //                                                     sendSound();
// // //                                                     botProvider.cityButtonVisible = false;
// // //                                                     botProvider.cityTextVisible = true;
// // //                                                     botProvider.dateofbirthWidgetVisible = true;
// // //                                                     receiveSound();
// // //                                                   });
// // //                                                 },
// // //                                                 child: SendButtonComponent()))
// // //                                       ],
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ),
// // //
// // //                           SlideFadeTransition(
// // //                             delayStart: Duration(milliseconds: 300),
// // //                             animationDuration: Duration(milliseconds: 1200),
// // //                             // curve: Curves.elasticOut,
// // //                             // offset: -2.5,
// // //
// // //                             child: Visibility(
// // //                               visible: botProvider.dateofbirthWidgetVisible ? true : false,
// // //                               child: Container(
// // //                                 width: SizeConfig.screenWidth,
// // //                                 child: Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: [
// // //                                     SizedBox(
// // //                                       height: 20,
// // //                                     ),
// // //                                     Text(
// // //                                       "Great!!!...",
// // //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// // //                                     ),
// // //                                     Text(
// // //                                       "Please Enter your date of birth",
// // //                                       style: KH7.copyWith(height: 1.5),
// // //                                     ),
// // //                                     SizedBox(
// // //                                       height: 7,
// // //                                     ),
// // //                                     Row(
// // //                                       mainAxisAlignment:
// // //                                       MainAxisAlignment.spaceBetween,
// // //                                       children: [
// // //                                         Container(
// // //                                           width: botProvider.dateofbirthTextVisible
// // //                                               ? SizeConfig.screenWidth * 0.9
// // //                                               : SizeConfig.screenWidth * 0.7,
// // //                                           child: TextFiledBorderWidget(
// // //                                             controller: botProvider.dateofbirthTxt,
// // //                                             isEnabled: true,
// // //                                             label: 'Enter Date Of Birth',
// // //                                             validator: (String) {},
// // //                                             width: SizeConfig.screenWidth,
// // //                                             inputType: TextInputType.text,
// // //                                             focusNode: botProvider.dobFocus,
// // //                                             onChnage: (String? value) {
// // //                                               setState(() {
// // //                                                 botProvider.dateofbirthButtonVisible = true;
// // //                                                 botProvider.dateofbirthTextVisible = false;
// // //                                               });
// // //                                             },
// // //                                           ),
// // //                                         ),
// // //                                         Visibility(
// // //                                             visible:
// // //                                             botProvider.dateofbirthButtonVisible ? true : false,
// // //                                             child: InkWell(
// // //                                                 onTap: () {
// // //                                                   setState(() {
// // //                                                     sendSound();
// // //                                                     botProvider.dateofbirthButtonVisible = false;
// // //                                                     botProvider.dateofbirthTextVisible = true;
// // //                                                     botProvider.employementWidgetVisible = true;
// // //                                                     receiveSound();
// // //                                                   });
// // //                                                 },
// // //                                                 child: SendButtonComponent()))
// // //                                       ],
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ),
// // //
// // //                           SlideFadeTransition(
// // //                             delayStart: Duration(milliseconds: 300),
// // //                             animationDuration: Duration(milliseconds: 1200),
// // //                             // curve: Curves.elasticOut,
// // //                             // offset: -2.5,
// // //
// // //                             child: Visibility(
// // //                               visible: botProvider.employementWidgetVisible ? true : false,
// // //                               child: Container(
// // //                                 width: SizeConfig.screenWidth,
// // //                                 child: Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: [
// // //                                     SizedBox(
// // //                                       height: 20,
// // //                                     ),
// // //
// // //                                     Text(
// // //                                       "okk!!!...",
// // //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// // //                                     ),
// // //                                     Text(
// // //                                       "Please Enter Employement Type",
// // //                                       style: KH7.copyWith(height: 1.5),
// // //                                     ),
// // //                                     SizedBox(
// // //                                       height: 7,
// // //                                     ),
// // //                                     Row(
// // //                                       mainAxisAlignment:
// // //                                       MainAxisAlignment.spaceBetween,
// // //                                       children: [
// // //                                         Container(
// // //                                           width: botProvider.employementTextVisible
// // //                                               ? SizeConfig.screenWidth * 0.9
// // //                                               : SizeConfig.screenWidth * 0.7,
// // //                                           child: TextFiledBorderWidget(
// // //                                             controller: botProvider.employementTxt,
// // //                                             isEnabled: true,
// // //                                             label: 'Enter Employement Type',
// // //                                             validator: (String) {},
// // //                                             width: SizeConfig.screenWidth,
// // //                                             inputType: TextInputType.text,
// // //                                             focusNode: botProvider.employement,
// // //                                             onChnage: (String? value) {
// // //                                               setState(() {
// // //                                                 botProvider.employementtypeButtonVisible = true;
// // //                                                 botProvider.employementTextVisible = false;
// // //                                               });
// // //                                             },
// // //                                           ),
// // //                                         ),
// // //                                         Visibility(
// // //                                             visible:
// // //                                             botProvider.employementtypeButtonVisible ? true : false,
// // //                                             child: InkWell(
// // //                                                 onTap: () {
// // //                                                   setState(() {
// // //                                                     sendSound();
// // //                                                     botProvider.employementtypeButtonVisible = false;
// // //                                                     botProvider.employementTextVisible = true;
// // //                                                     botProvider.monthlyWidgetVisible = true;
// // //                                                     receiveSound();
// // //                                                   });
// // //                                                 },
// // //                                                 child: SendButtonComponent()))
// // //                                       ],
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ),
// // //
// // //
// // //                           SlideFadeTransition(
// // //                             delayStart: Duration(milliseconds: 300),
// // //                             animationDuration: Duration(milliseconds: 1200),
// // //                             // curve: Curves.elasticOut,
// // //                             // offset: -2.5,
// // //
// // //                             child: Visibility(
// // //                               visible: botProvider.monthlyWidgetVisible ? true : false,
// // //                               child: Container(
// // //                                 width: SizeConfig.screenWidth,
// // //                                 child: Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: [
// // //                                     SizedBox(
// // //                                       height: 20,
// // //                                     ),
// // //                                     Text(
// // //                                       "Ok!!!...",
// // //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// // //                                     ),
// // //                                     Text(
// // //                                       "Please Enter Monthly Income",
// // //                                       style: KH7.copyWith(height: 1.5),
// // //                                     ),
// // //                                     SizedBox(
// // //                                       height: 7,
// // //                                     ),
// // //                                     Row(
// // //                                       mainAxisAlignment:
// // //                                       MainAxisAlignment.spaceBetween,
// // //                                       children: [
// // //                                         Container(
// // //                                           width: botProvider.monthalyTextVisible
// // //                                               ? SizeConfig.screenWidth * 0.9
// // //                                               : SizeConfig.screenWidth * 0.7,
// // //                                           child:
// // //
// // //                                           Slider(
// // //                                             value: botProvider.monthlyIncome,
// // //                                             min: 0,
// // //                                             max: 10000,
// // //                                             onChanged: (newValue) {
// // //                                               setState(() {
// // //                                                 botProvider.monthlyIncome = newValue;
// // //                                                 botProvider.incomerangeButtonVisible = true;
// // //                                                 // botProvider.employementTextVisible = false;
// // //                                               });
// // //                                             },
// // //                                             divisions: 100,
// // //                                             label: botProvider.monthlyIncome.toString(),
// // //                                             activeColor: Colors.blueGrey, // Set the color of the active portion of the slider
// // //                                             inactiveColor: Colors.grey, // Set the color of the inactive portion of the slider
// // //                                           ),
// // //
// // //
// // //                                         ),
// // //                                         Visibility(
// // //                                             visible:
// // //                                             botProvider.incomerangeButtonVisible ? true : false,
// // //                                             child: InkWell(
// // //                                                 onTap: () {
// // //                                                   setState(() {
// // //                                                     sendSound();
// // //                                                     botProvider.incomerangeButtonVisible = false;
// // //                                                     botProvider.employementTextVisible = true;
// // //                                                     botProvider.existingloanWidgetVisible=true;
// // //                                                     receiveSound();
// // //                                                   });
// // //                                                 },
// // //                                                 child: SendButtonComponent()))
// // //                                       ],
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ),
// // //
// // //                           SlideFadeTransition(
// // //                             delayStart: Duration(milliseconds: 300),
// // //                             animationDuration: Duration(milliseconds: 1200),
// // //                             // curve: Curves.elasticOut,
// // //                             // offset: -2.5,
// // //
// // //                             child: Visibility(
// // //                               visible: botProvider.existingloanWidgetVisible ? true : false,
// // //                               child: Container(
// // //                                 width: SizeConfig.screenWidth,
// // //                                 child: Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: [
// // //                                     SizedBox(
// // //                                       height: 20,
// // //                                     ),
// // //                                     Text(
// // //                                       "Great!!!...",
// // //                                       style: KH7_SemiBold.copyWith(height: 1.5),
// // //                                     ),
// // //                                     Text(
// // //                                       "Now, Enter you have any existing loan",
// // //                                       style: KH7.copyWith(height: 1.5),
// // //                                     ),
// // //                                     SizedBox(
// // //                                       height: 7,
// // //                                     ),
// // //                                     Column(
// // //                                       children: [
// // //                                         Container(
// // //                                           width: botProvider.existingtextvisible
// // //                                               ? SizeConfig.screenWidth * 0.9
// // //                                               : SizeConfig.screenWidth * 0.7,
// // //                                           child:
// // //                                           Container(
// // //                                             padding: EdgeInsets.symmetric(horizontal: 20.0),
// // //                                             margin: EdgeInsets.only(top: 20.0),
// // //                                             child: GridView.count(
// // //                                               shrinkWrap: true,
// // //                                               crossAxisCount: 2,
// // //                                               childAspectRatio: 3,
// // //                                               mainAxisSpacing: 10.0,
// // //                                               crossAxisSpacing: 10.0,
// // //                                               children: [
// // //                                                 CheckboxListTile(
// // //                                                   title: Text('Home Loan'),
// // //                                                   value: botProvider.homeLoanChecked,
// // //                                                   onChanged: (newValue) {
// // //                                                     setState(() {
// // //                                                       botProvider.homeLoanChecked = newValue!;
// // //                                                     });
// // //                                                   },
// // //                                                 ),
// // //                                                 CheckboxListTile(
// // //                                                   title: Text('Bike Loan'),
// // //                                                   value: botProvider.bikeLoanChecked,
// // //                                                   onChanged: (newValue) {
// // //                                                     setState(() {
// // //                                                       botProvider.bikeLoanChecked = newValue!;
// // //                                                     });
// // //                                                   },
// // //                                                 ),
// // //                                                 CheckboxListTile(
// // //                                                   title: Text('Car Loan'),
// // //                                                   value: botProvider.carLoanChecked,
// // //                                                   onChanged: (newValue) {
// // //                                                     setState(() {
// // //                                                       botProvider.carLoanChecked = newValue!;
// // //                                                     });
// // //                                                   },
// // //                                                 ),
// // //                                                 CheckboxListTile(
// // //                                                   title: Text('Personal Loan'),
// // //                                                   value: botProvider.personalLoanChecked,
// // //                                                   onChanged: (newValue) {
// // //                                                     setState(() {
// // //                                                       botProvider.personalLoanChecked = newValue!;
// // //                                                     });
// // //                                                   },
// // //                                                 ),
// // //                                                 CheckboxListTile(
// // //                                                   title: Text('Other'),
// // //                                                   value: botProvider.otherLoanChecked,
// // //                                                   onChanged: (newValue) {
// // //                                                     setState(() {
// // //                                                       botProvider.otherLoanChecked = newValue!;
// // //                                                     });
// // //                                                   },
// // //                                                 ),
// // //
// // //                                               ],
// // //                                             ),
// // //                                           ),
// // //
// // //                                         ),
// // //                                       ],
// // //                                     ),
// // //                                     Visibility(
// // //                                         visible:
// // //                                         botProvider.otherLoanChecked ? true : false,
// // //                                         child: InkWell(
// // //                                             onTap: () {
// // //                                               setState(() {
// // //                                                 sendSound();
// // //                                                 botProvider.cityButtonVisible = false;
// // //                                                 botProvider.cityTextVisible = true;
// // //                                                 botProvider.dateofbirthWidgetVisible = true;
// // //                                                 receiveSound();
// // //                                               });
// // //                                             },
// // //                                             child: SendButtonComponent())),
// // //
// // //                                     Visibility(
// // //                                       visible: botProvider.cityTextVisible == true ? true :false,
// // //                                       child: InkWell(
// // //                                           onTap: () {
// // //                                             setState(() {
// // //                                               sendSound();
// // //                                               botProvider.finishButtonVisible =true;
// // //                                               receiveSound();
// // //                                             });
// // //                                           },
// // //                                           child: SendButtonComponent()),
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ),
// // //
// // //                           Visibility(
// // //                             visible: botProvider.finishButtonVisible == true ? true :false,
// // //                             child: Column(
// // //                               children: [
// // //                                 Text(
// // //                                   "You are eligible for loan",
// // //                                   textAlign: TextAlign.center,
// // //                                   style: KH6.copyWith(
// // //                                     height: 1.5,
// // //                                   ),
// // //                                 ),
// // //
// // //                                 Text(
// // //                                   "You can get loan according to your eligible criteria",
// // //                                   style: KH7.copyWith(height: 1.5,),
// // //                                 ),
// // //                                 SizedBox(height: 20,),
// // //                                 botProvider.isApiCallProcessing==false?InkWell(
// // //                                     onTap: () {
// // //                                       setState(() {
// // //                                         sendSound();
// // //                                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => EMICalculatorUI()));
// // //                                         receiveSound();
// // //                                       });
// // //                                     },
// // //                                     child: Padding(
// // //                                       padding: const EdgeInsets.all(10.0),
// // //                                       child: Container(
// // //                                         width: SizeConfig.screenWidth,
// // //                                         decoration: BoxDecoration(
// // //                                             borderRadius: BorderRadius.circular(5),
// // //                                             color: kPrimaryColor2,
// // //                                             boxShadow: const [
// // //                                               BoxShadow(
// // //                                                   color: Color.fromRGBO(0, 0, 0, 0.15),
// // //                                                   offset: Offset(1, 6),
// // //                                                   blurRadius: 12)
// // //                                             ]),
// // //                                         // height: 50,
// // //                                         // width: 50,
// // //                                         padding: EdgeInsets.all(12),
// // //                                         alignment: Alignment.center,
// // //                                         child: Text("Calculate EMI", style: KH6_SemiBold.copyWith(color: KWHITE_COLOR),),
// // //                                       ),
// // //                                     )):Container(
// // //                                   alignment: Alignment.center,
// // //                                   width: MediaQuery.of(context).size.width,
// // //                                   child: const GFLoader(
// // //                                       type:GFLoaderType.circle
// // //                                   ),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     )),
// // //
// // //
// // //
// // //
// // //
// // //               ],
// // //             );
// // //           }),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }  SizedBox(height: 20,),
// //                                 botProvider.isApiCallProcessing==false?InkWell(
// //                                     onTap: () {
// //                                       setState(() {
// //                                         sendSound();
// //                                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => EMICalculatorUI()));
// //                                         receiveSound();
// //                                       });
// //                                     },
// //                                     child: Padding(
// //                                       padding: const EdgeInsets.all(10.0),
// //                                       child: Container(
// //                                         width: SizeConfig.screenWidth,
// //                                         decoration: BoxDecoration(
// //                                             borderRadius: BorderRadius.circular(5),
// //                                             color: kPrimaryColor2,
// //                                             boxShadow: const [
// //                                               BoxShadow(
// //                                                   color: Color.fromRGBO(0, 0, 0, 0.15),
// //                                                   offset: Offset(1, 6),
// //                                                   blurRadius: 12)
// //                                             ]),
// //                                         // height: 50,
// //                                         // width: 50,
// //                                         padding: EdgeInsets.all(12),
// //                                         alignment: Alignment.center,
// //                                         child: Text("Calculate EMI", style: KH6_SemiBold.copyWith(color: KWHITE_COLOR),),
// //                                       ),
// //                                     )):Container(
// //                                   alignment: Alignment.center,
// //                                   width: MediaQuery.of(context).size.width,
// //                                   child: const GFLoader(
// //                                       type:GFLoaderType.circle
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     )),
// //
// //
// //
// //
// //
// //               ],
// //             );
// //           }),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// // RangeSlider(
// // values: _loanRangeValues,
// // min: 0.0,
// // max: 4000000.0,
// // divisions: 40,
// // labels: RangeLabels(
// // '${_loanRangeValues.start}L',
// // '${_loanRangeValues.end}L',
// // ),
// // onChanged: (RangeValues values) {
// // setState(() {
// // _loanRangeValues = values;
// // _principalController.text = _loanRangeValues.end.toStringAsFixed(2);
// // });
// // },
// // activeColor: Colors.blueGrey, // Change the color to blue
// // textDirection: TextDirection.ltr, // Set text direction to left-to-right
// // )
//
//
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({Key? key}) : super(key: key);
// //
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
// //   late TabController _tabController;
// //
// //   final List<Vehicle> VehicleList = [
// //     Vehicle(carName: 'Audi', carModel: 'A1', carImage: 'assets/images/audi_a1.jpg'),
// //     Vehicle(carName: 'BMW', carModel: 'X1', carImage: 'assets/images/bmw_x1.jpg'),
// //     Vehicle(carName: 'Mercedes-Benz', carModel: 'C-Class', carImage: 'assets/images/mercedes_c-class.jpg'),
// //   ];
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = TabController(length: 2, vsync: this);
// //   }
// //
// //   @override
// //   void dispose() {
// //     _tabController.dispose();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         bottom: TabBar(
// //           controller: _tabController,
// //           tabs: [
// //             const Tab(text: 'Tab 1'),
// //             const Tab(text: 'Tab 2'),
// //           ],
// //         ),
// //         title: const Text('My App'),
// //       ),
// //       body: TabBarView(
// //         controller: _tabController,
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Container(
// //               width: MediaQuery.of(context).size.width,
// //               height: MediaQuery.of(context).size.height,
// //               padding: const EdgeInsets.all(16),
// //               child: ListView.builder(
// //                 itemCount: VehicleList.length,
// //                 itemBuilder: (context, index) {
// //                   return my_Vehicle_List(
// //                     data: VehicleList[index],
// //                     index: index,
// //                   );
// //                 },
// //               ),
// //             ),
// //           ),
// //           const Center(child: Text('Tab 2')),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class my_Vehicle_List extends StatelessWidget {
// //   final Vehicle data;
// //   final int index;
// //
// //   const my_Vehicle_List({Key? key, required this.data, required this.index}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(8.0),
// //       child: Card(
// //         elevation: 2,
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(
// //                 data.carName,
// //                 style: const TextStyle(
// //                   fontWeight: FontWeight.w600,
// //                   fontSize: 16,
// //                   fontFamily: 'InterRegular',
// //                 ),
// //               ),
// //               Text(
// //                 data.carModel,
// //                 style: const TextStyle(
// //                   fontWeight: FontWeight.w400,
// //                   fontSize: 14,
// //                   fontFamily: 'InterRegular',
// //                 ),
// //               ),
// //               Image.asset(
// //                 data.carImage,
// //                 width: 300,
// //                 height: 200,
// //                 fit: BoxFit.cover,
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:loan_app/Helper/navigation_helper.dart';
//
// import '../Dashboard/Car_details_page.dart';
// import '../Helper/globle style.dart';
// import '../VehiclelList/VehicleDummyModel.dart';
// import '../VehiclelList/Vehicle_List.dart';
// import 'Profile/Pdf_viewer.dart';


// class CoustmerDetailScreen extends StatefulWidget {
//   CoustmerDetailScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CoustmerDetailScreen> createState() => _CoustmerDetailScreenState();
// }
//
// class _CoustmerDetailScreenState extends State<CoustmerDetailScreen>
//     with TickerProviderStateMixin {
//   late TabController _tabController = TabController(length: 2, vsync: this);
//   String document="";
//   late File filedocument;
//   bool isfileuploaded=false;
//   List<VehicleDetails> VehicleList = [];
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: const Text(
//           "My Profile",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         leading: IconButton(
//           icon: Icon(
//             Icons.chevron_left,
//             size: 25.0,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(30),
//                 ),
//                 color: Colors.blueGrey,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           width: MediaQuery.of(context).size.width * 0.7,
//                           alignment: Alignment.topLeft,
//                           child: const Text(
//                             "John Smith",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               fontSize: 20,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Container(
//                           width: MediaQuery.of(context).size.width * 0.7,
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "Pune, Maharashtra",
//                             style: TextStyle(
//                               fontWeight: FontWeight.normal,
//                               color: Colors.white,
//                               fontSize: 20,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Expanded(
//                       child: Container(
//                         height: 60,
//                         width: 80,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.blueGrey[700],
//                             border: Border.all(color: Colors.blueGrey)),
//                         child: const Icon(
//                           Icons.person,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             TabBar(
//               controller: _tabController,
//               tabs: const [
//                 Tab(
//                   text: 'Personal Info',
//                 ),
//                 Tab(text: 'My Vehicles'),
//               ],
//               labelColor: Colors.blueGrey[700],
//               unselectedLabelColor: Colors.blueGrey[700],
//               indicatorColor: Colors.blueGrey[700],
//               labelStyle: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//             SizedBox(
//               height: 520,
//               child:
//               TabBarView(
//                 controller: _tabController,
//                 children: [
//                   // Your details screen widget
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Card(
//                       elevation: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: const [
//                             Text(
//                               "Contact Number",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: TextColor,
//                                   fontSize: 13,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               "0987654321",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: TextColor,
//                                   fontSize: 15,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             const Divider(
//                               thickness: 0.4,
//                               color: Colors.blueGrey,
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               "Email Id",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: TextColor,
//                                   fontSize: 13,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               "johnsmith@gmail.com",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: TextColor,
//                                   fontSize: 15,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             const Divider(
//                               thickness: 0.4,
//                               color: Colors.blueGrey,
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               "Address",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: TextColor,
//                                   fontSize: 13,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               "Hadapsar, Pune Maharashtra",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: TextColor,
//                                   fontSize: 15,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             const Divider(
//                               thickness: 0.4,
//                               color: Colors.blueGrey,
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               "Blood group",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: TextColor,
//                                   fontSize: 13,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               "O+",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: TextColor,
//                                   fontSize: 15,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             const Divider(
//                               thickness: 0.4,
//                               color: Colors.blueGrey,
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               "Date of birth",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: TextColor,
//                                   fontSize: 13,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               "12-Nov-1994",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: TextColor,
//                                   fontSize: 15,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             const Divider(
//                               thickness: 0.4,
//                               color: Colors.blueGrey,
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               "Job Role",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: TextColor,
//                                   fontSize: 13,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               "Developer",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: TextColor,
//                                   fontSize: 15,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             const Divider(
//                               thickness: 0.4,
//                               color: Colors.blueGrey,
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               "Employement Type",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: TextColor,
//                                   fontSize: 13,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               "Self Employed",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: TextColor,
//                                   fontSize: 15,
//                                   fontFamily: 'InterRegular'),
//                             ),
//                             const Divider(
//                               thickness: 0.4,
//                               color: Colors.blueGrey,
//                             ),
//                             SizedBox(height: 10),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//
//                   //Your Vehicle screen widget
//
//                   Padding(
//                     padding: const EdgeInsets.all(5.0),
//                     child: SizedBox(
//                       height: 80, // <-- Decrease the height here
//                       child:
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => new CarDetailScreen()));
//
//                         },
//                         child: Card(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15.0),
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                 child: Image.asset(
//                                   "assets/images/Vagnera.png",
//                                   width: 120,
//                                   height: 150,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       const Text(
//                                         "John Smith",
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.black),
//                                       ),
//                                       SizedBox(width: 70,),
//                                       IconButton(
//                                         icon: Icon(
//                                           Icons.upload_file,
//                                           size:20.0,
//                                           color: Colors.blueGrey,
//                                         ),
//                                         onPressed: () async {
//                                           //upload document
//                                           if (document.isNotEmpty) {
//                                             push(context, Pdf_viewer(document));
//                                           } else {
//                                             FilePickerResult? result = await FilePicker.platform
//                                                 .pickFiles(
//                                                 type: FileType.custom,
//                                                 allowedExtensions: ['pdf', 'doc'],
//                                                 allowMultiple: false);
//                                             if (result != null) {
//                                               PlatformFile file = result.files.first;
//                                               filedocument =File(file.path!);
//                                               isfileuploaded = true;
//                                               print(file.name);
//                                               //print(file.bytes);
//                                               print(file.size);
//                                               print(file.extension);
//                                               print(file.path);
//                                               showAlert(context);
//                                             } else {
//                                               print('No file selected');
//                                             }
//                                             //showAlert();
//                                             setState(() {});
//                                           }
//                                         },
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   RichText(
//                                     text: const TextSpan(
//                                       style: TextStyle(fontSize: 20),
//                                       children: <TextSpan>[
//                                         TextSpan(
//                                           text: 'MH12TY5476',
//                                           style: TextStyle(
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.normal,
//                                             color: Colors.black,
//                                             decoration:
//                                             TextDecoration.underline,
//                                           ),
//                                         ),
//                                         TextSpan(
//                                             text: '  First Owner',
//                                             style: TextStyle(
//                                                 color: Colors.grey,
//                                                 fontSize: 12)),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text(
//                                     "KUSHAQ AMBITION 1.0TSI AT ",
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.normal,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 15.0),
//                                     child: Text(
//                                       "PUC expired 27-Jan-2023",
//                                       style: TextStyle(
//                                         fontSize: 13,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.black,
//                                       ),
//                                     ),
//                                   ),
//
//                                 ],
//                               ),
//
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//
//                 ],
//               ),
//
//
//             )],
//         ),
//       ),
//
//     );
//
//   }
//
//
//   void showAlert(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text(" Confirmation"),
//           content: const Text("Are you sure you want to upload this document?"),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: const Text("Yes"),
//             ),
//             TextButton(
//               onPressed: () {
//
//                 Navigator.of(context).pop();
//               },
//               child: const Text("No"),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }


