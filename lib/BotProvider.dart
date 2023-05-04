

import 'package:flutter/material.dart';



class BotProvider with ChangeNotifier{



  TextEditingController districttxt = new TextEditingController();
  TextEditingController cityTypeTxt = new TextEditingController();
  TextEditingController dateofbirthTxt = new TextEditingController();
  TextEditingController employementTxt = new TextEditingController();
  TextEditingController monthlyicomtxt = new TextEditingController();



  FocusNode distictfocus = FocusNode();
  FocusNode cityfocus = FocusNode();
  FocusNode dobFocus = FocusNode();
  FocusNode employementfocus = FocusNode();
  FocusNode monthlyfocus = FocusNode();


  bool isApiProcessing = false;
  bool isApiCallProcessing = false;

  bool districtButtonVisible = false;
  bool districtTextVisible = true;
  bool disrictWidgetVisible = false;

  bool cityButtonVisible = false;
  bool cityTextVisible = true;
  bool cityWidgetVisible = false;

  bool dateofbirthButtonVisible = false;
  bool dateofbirthTextVisible = true;
  bool dateofbirthWidgetVisible = false;
  bool finishWidgetVisible = false;


  bool employementtypeButtonVisible = false;
  bool employementTextVisible = true;
  bool employementWidgetVisible = false;


  bool monthlyWidgetVisible = false;
  bool existingtextvisible = true;
  bool existingbottonvisible = false;




  bool monthalyTextVisible = true;
  bool monthalybottonVisible = false;


  bool incomerangeButtonVisible = false;



  bool existingloanWidgetVisible = false;


  bool homeLoanChecked = false;
  bool bikeLoanChecked = false;
  bool carLoanChecked = false;
  bool personalLoanChecked = false;
  bool otherLoanChecked = false;
  bool finishButtonVisible = false;


  double _monthlyIncome = 0.0;

  double get monthlyIncome => _monthlyIncome;

  set monthlyIncome(double value) {
    _monthlyIncome = value;
    notifyListeners();
  }


  void visibleAdvSkillWidgetVisible(bool visible){
    existingloanWidgetVisible = visible;
    notifyListeners();
  }












}