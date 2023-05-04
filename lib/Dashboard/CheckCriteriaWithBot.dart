import 'package:flutter/material.dart';
import 'package:getwidget/types/gf_loader_type.dart';
import 'package:provider/provider.dart';
import 'package:flutter_beep/flutter_beep.dart';
import '../../../../Helper/SizedConfig.dart';
import '../../../../Helper/globle style.dart';
import '../BotProvider.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:getwidget/getwidget.dart';
import '../Helper/animation.dart';
import '../Helper/commen_textField.dart';
import '../Helper/globle style.dart';
import '../Helper/globle style.dart';
import '../Helper/send_button_component.dart';
import 'Emi_calculator.dart';

class CheckCriteriaWithBot extends StatefulWidget {
  const CheckCriteriaWithBot({Key? key}) : super(key: key);

  @override
  State<CheckCriteriaWithBot> createState() => _CheckCriteriaWithBotState();
}

class _CheckCriteriaWithBotState extends State<CheckCriteriaWithBot> {
  late BotProvider botProvider1;
  final _principalController = TextEditingController();
  RangeValues _loanRangeValues = RangeValues(0.0, 10.0);
  late AssetsAudioPlayer audioPlayer;
  String ActiveDeactive = 'Salaride';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer = AssetsAudioPlayer();
    receiveSound();
    botProvider1 = Provider.of<BotProvider>(context, listen: false);
  }

  sendSound() async {
    FlutterBeep.beep();
  }

  receiveSound() async {
    Future.delayed(Duration.zero, () {
      audioPlayer.open(
        Audio(
          'assets/audios/sound_receive.mp3',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Consumer<BotProvider>(builder: (context, botProvider, child) {
            return Column(
              children: [
                //Top componenet
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: SizeConfig.screenWidth * 0.5,
                        child: Image.asset('assets/images/hello.gif'),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SlideFadeTransition(
                              delayStart: Duration(milliseconds: 500),
                              animationDuration: Duration(milliseconds: 1200),
                              child: const Text(
                                "Welcome, John",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: themeColor,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                            ),
                            SizedBox(height: 10,),
                            SlideFadeTransition(
                              delayStart: Duration(milliseconds: 1000),
                              animationDuration: Duration(milliseconds: 700),
                              child: Text(
                                textAlign: TextAlign.center,
                                "Let's start, to check your eligible critria...",
                                style: KH6.copyWith(
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),



                SlideFadeTransition(
                    delayStart: Duration(milliseconds: 1200),
                    animationDuration: Duration(milliseconds: 1200),
                    // curve: Curves.elasticOut,
                    // offset: -2.5,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          SlideFadeTransition(
                              delayStart: Duration(milliseconds: 200),
                              animationDuration: Duration(milliseconds: 1200),
                              // curve: Curves.elasticOut,
                              // offset: -2.5,
                              child: Text(
                                "Let's Enter your information such as address, date of birth,salary for checking your criteria...",
                                style: KH7_SemiBold.copyWith(height: 1.5),
                              )),
                          Container(
                            width: SizeConfig.screenWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Enter your city name",
                                  style: KH7.copyWith(height: 1.5),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: botProvider.districtTextVisible
                                          ? SizeConfig.screenWidth * 0.9
                                          : SizeConfig.screenWidth * 0.7,
                                      child: TextFiledBorderWidget(
                                        controller: botProvider.districttxt,
                                        isEnabled: true,
                                        label: 'Enter City',
                                        validator: (String) {},
                                        width: SizeConfig.screenWidth,
                                        inputType: TextInputType.text,
                                        focusNode: botProvider.distictfocus,
                                        onChnage: (String? value) {
                                          setState(() {
                                            botProvider.districtButtonVisible = true;
                                            botProvider.districtTextVisible = false;

                                          });
                                        },
                                      ),
                                    ),
                                    Visibility(
                                        visible:
                                        botProvider.districtButtonVisible ? true : false,
                                        child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                sendSound();
                                                botProvider.districtButtonVisible = false;
                                                botProvider.districtTextVisible = true;
                                                botProvider.dateofbirthWidgetVisible = true;
                                                receiveSound();
                                              });
                                            },
                                            child: SendButtonComponent()))
                                  ],
                                ),

                              ],
                            ),
                          ),


                          SlideFadeTransition(
                            delayStart: Duration(milliseconds: 300),
                            animationDuration: Duration(milliseconds: 1200),
                            // curve: Curves.elasticOut,
                            // offset: -2.5,

                            child: Visibility(
                              visible: botProvider.dateofbirthWidgetVisible ? true : false,
                              child: Container(
                                width: SizeConfig.screenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Great!!!...",
                                      style: KH7_SemiBold.copyWith(height: 1.5),
                                    ),
                                    Text(
                                      "Please Enter your date of birth",
                                      style: KH7.copyWith(height: 1.5),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: botProvider.dateofbirthTextVisible
                                              ? SizeConfig.screenWidth * 0.9
                                              : SizeConfig.screenWidth * 0.7,
                                          child: TextFiledBorderWidget(
                                            controller: botProvider.dateofbirthTxt,
                                            isEnabled: true,
                                            label: 'Enter Date Of Birth',
                                            validator: (String) {},
                                            width: SizeConfig.screenWidth,
                                            inputType: TextInputType.text,
                                            focusNode: botProvider.dobFocus,
                                            onChnage: (String? value) {
                                              setState(() {
                                                botProvider.dateofbirthButtonVisible = true;
                                                botProvider.dateofbirthTextVisible = false;
                                              });
                                            },
                                          ),
                                        ),
                                        Visibility(
                                            visible:
                                            botProvider.dateofbirthButtonVisible ? true : false,
                                            child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    sendSound();
                                                    botProvider.dateofbirthButtonVisible = false;
                                                    botProvider.dateofbirthTextVisible = true;
                                                    botProvider.employementWidgetVisible = true;
                                                    receiveSound();
                                                  });
                                                },
                                                child: SendButtonComponent()))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SlideFadeTransition(
                            delayStart: Duration(milliseconds: 300),
                            animationDuration: Duration(milliseconds: 1200),
                            // curve: Curves.elasticOut,
                            // offset: -2.5,

                            child: Visibility(
                              visible: botProvider.employementWidgetVisible ? true : false,
                              child: Container(
                                width: SizeConfig.screenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),

                                    Text(
                                      "okk!!!...",
                                      style: KH7_SemiBold.copyWith(height: 1.5),
                                    ),
                                    Text(
                                      "Please Enter Employement Type",
                                      style: KH7.copyWith(height: 1.5),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: botProvider.employementTextVisible
                                              ? SizeConfig.screenWidth * 0.9
                                              : SizeConfig.screenWidth * 0.7,
                                          child:
                                          DropdownButtonFormField(
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all( 8), //<-- set vertical padding here
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(color: Colors.grey, width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(color: Colors.grey, width: 1),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),
                                            dropdownColor: Colors.white,
                                            value: ActiveDeactive,
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                ActiveDeactive = newValue!;
                                                print("isActive==");
                                                print(ActiveDeactive);
                                              });
                                            },
                                            items: <String>['Salaride', 'Buisnessman'].map<DropdownMenuItem<String>>((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: TextStyle(fontSize: 15),
                                                ),
                                              );
                                            }).toList(),
                                          )
                                        ),
                                        Visibility(
                                            visible:
                                            botProvider.employementtypeButtonVisible ? true : false,
                                            child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    sendSound();
                                                    botProvider.employementtypeButtonVisible = false;
                                                    botProvider.employementTextVisible = true;
                                                    botProvider.monthlyWidgetVisible = true;
                                                    receiveSound();
                                                  });
                                                },
                                                child: SendButtonComponent()))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),


                          SlideFadeTransition(
                            delayStart: Duration(milliseconds: 300),
                            animationDuration: Duration(milliseconds: 1200),
                            // curve: Curves.elasticOut,
                            // offset: -2.5,

                            child: Visibility(
                              visible: botProvider.monthlyWidgetVisible ? true : false,
                              child: Container(
                                width: SizeConfig.screenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),



                                    Text(
                                      "Ok!!!...",
                                      style: KH7_SemiBold.copyWith(height: 1.5),
                                    ),
                                    Row(
                                      children: [
                                        Text( "Please Enter Monthly Income"),
                                        SizedBox(width: 50),
                                        Expanded(
                                          child:
                                          SizedBox(
                                            height: 40,

                                            child: TextField(
                                              controller: _principalController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                                labelText: 'Rs.',
                                              ),
                                              keyboardType: TextInputType.numberWithOptions(decimal: true),
                                            ),
                                          ),


                                        ),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 7,
                                    ),
                                    Container(
                                      width: botProvider.monthalyTextVisible
                                          ? SizeConfig.screenWidth * 0.9
                                          : SizeConfig.screenWidth * 0.7,
                                      child:

                                      RangeSlider(
                                        values: _loanRangeValues,
                                        min: 0.0,
                                        max: 4000000.0,
                                        divisions: 40,
                                        labels: RangeLabels(
                                          '${_loanRangeValues.start}L',
                                          '${_loanRangeValues.end}L',
                                        ),
                                        onChanged: (RangeValues values) {
                                          setState(() {
                                            _loanRangeValues = values;
                                            _principalController.text = _loanRangeValues.end.toStringAsFixed(2);
                                            botProvider.monthalybottonVisible = true;
                                          });
                                        },
                                        activeColor:themeColor, // Change the color to blue
                                        semanticFormatterCallback: (value) => '${value.round()}L', // Add this line to make the slider move from left to right
                                      ),


                                    ),


                                    Visibility(
                                        visible:
                                        botProvider.monthalybottonVisible ? true : false,
                                        child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                sendSound();
                                                botProvider.monthalybottonVisible = false;
                                                botProvider.existingloanWidgetVisible = true;
                                               // botProvider.visibleExpericeneWidget(true);
                                                receiveSound();
                                              });
                                            },
                                            child: SendButtonComponent())),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SlideFadeTransition(
                            delayStart: Duration(milliseconds: 300),
                            animationDuration: Duration(milliseconds: 1200),
                            // curve: Curves.elasticOut,
                            // offset: -2.5,

                            child: Visibility(
                              visible: botProvider.existingloanWidgetVisible ? true : false,
                              child: Container(
                                width: SizeConfig.screenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Great!!!...",
                                      style: KH7_SemiBold.copyWith(height: 1.5),
                                    ),
                                    Text(
                                      "Now, Enter you have any existing loan",
                                      style: KH7.copyWith(height: 1.5),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: botProvider.existingtextvisible
                                              ? SizeConfig.screenWidth * 0.9
                                              : SizeConfig.screenWidth * 0.7,
                                          child:
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                                            margin: EdgeInsets.only(top: 10.0),
                                            child: GridView.count(
                                              shrinkWrap: true,
                                              crossAxisCount: 2,
                                              childAspectRatio: 3,
                                              mainAxisSpacing: 1.0,
                                              crossAxisSpacing: 1.0,
                                              children: [
                                                CheckboxListTile(
                                                  title: Text('Home Loan'),
                                                  value: botProvider.homeLoanChecked,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      botProvider.homeLoanChecked = newValue!;
                                                    });
                                                  },
                                                ),
                                                CheckboxListTile(
                                                  title: Text('Bike Loan'),
                                                  value: botProvider.bikeLoanChecked,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      botProvider.bikeLoanChecked = newValue!;
                                                    });
                                                  },
                                                ),
                                                CheckboxListTile(
                                                  title: Text('Car Loan'),
                                                  value: botProvider.carLoanChecked,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      botProvider.carLoanChecked = newValue!;
                                                    });
                                                  },
                                                ),
                                                CheckboxListTile(
                                                  title: Text('Personal Loan'),
                                                  value: botProvider.personalLoanChecked,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      botProvider.personalLoanChecked = newValue!;
                                                    });
                                                  },
                                                ),
                                                CheckboxListTile(
                                                  title: Text('Other'),
                                                  value: botProvider.otherLoanChecked,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      botProvider.otherLoanChecked = newValue!;
                                                    });
                                                  },
                                                ),

                                              ],
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                    Visibility(
                                        visible:
                                        botProvider.homeLoanChecked==true||  botProvider.carLoanChecked==true||
                                            botProvider.bikeLoanChecked==true|| botProvider.personalLoanChecked==true||
                                            botProvider.otherLoanChecked ? true : false,
                                        child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                sendSound();
                                                botProvider.existingbottonvisible = false;
                                                botProvider.existingtextvisible = true;
                                                botProvider.finishWidgetVisible = true;
                                                receiveSound();
                                              });
                                            },
                                            child: SendButtonComponent())),


                                  ],
                                ),
                              ),
                            ),
                          ),

                          Visibility(
                            visible: botProvider.finishWidgetVisible == true ? true :false,
                            child: Column(
                              children: [
                                Text(
                                  "You are eligible for loan",
                                  textAlign: TextAlign.center,
                                  style: KH6.copyWith(
                                    height: 1.5,
                                  ),
                                ),

                                Text(
                                  "You can get loan according to your eligible criteria",
                                  style: KH7.copyWith(height: 1.5,),
                                ),
                                SizedBox(height: 20,),
                                botProvider.isApiCallProcessing==false?InkWell(
                                    onTap: () {
                                      setState(() {
                                        sendSound();
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => EMICalculatorUI()));
                                        receiveSound();
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width: SizeConfig.screenWidth,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: themeColor,
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                                  offset: Offset(1, 6),
                                                  blurRadius: 12)
                                            ]),
                                        // height: 50,
                                        // width: 50,
                                        padding: EdgeInsets.all(12),
                                        alignment: Alignment.center,
                                        child: Text("Calculate EMI", style: KH6_SemiBold.copyWith(color: KWHITE_COLOR),),
                                      ),
                                    )):Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  child: const GFLoader(
                                      type:GFLoaderType.circle
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),





              ],
            );
          }),
        ),
      ),
    );
  }
}
