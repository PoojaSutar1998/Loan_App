import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'SizedConfig.dart';

// Colors
const String placeholder_doc = 'assets/images/doctor_holder.png';
const String placeholder_profile = 'assets/images/profile_default.png';
const String placeholder_doctor_profile =
    'assets/images/doctor_placeholder.png';
const String article_placeholder = 'assets/images/article_placeholder.png';
const String article_headplaceholder =
    'assets/images/article_headplaceholder.png';
const String babyplaceholder = 'assets/images/babyplaceholder.png';
const kPrimaryColor = Colors.red;
//const kPrimaryColor2 = Color(0xffa10d0d);
const themeColor = Color(0xffa10d0d);
const themelightColor = Color(0xffcf7267);
const kPrimaryColor2 = Color(0xEA2D657F);
const kSecondaryColor = Color(0xBA2D657F);
const klightSecondaryColor = Color(0xAB2D657F);
const KTextBackground = Color(0xFFe6e6e6);
const KTextBlack = Color(0xFF666666);
const KTextGray = Color(0xD0666666);
const Color KLIGHT_Purple = Color(0XFF857085);
const KGiftSessionBg = Color(0xFFFAFAFE);
// const TextColor = Color(0xFF222227);
const TextColor = Color(0xD0262626);
const Color KCOLOR_LigthPink = Color(0xFFA3A9BF);
const kBackgroundColor = Color(0xFFf8f9fa);
const Color KSECONDARY_COLOR = Color(0xFF222227);
const KDividerColor = Color(0xFFd5d5d5);
const KINDICATOR_COLOR = Color(0xFFDEDEDE);
const KTEXTFIELD_BG_COLOR = Color(0xD0f2f7fb);
const KWHITE_COLOR = Color(0xFFFFFFFF);
const BOX_FILL_COLOR_GRAY = Color(0x26bbbbbb);
const KYelloColor = Color(0xffe8b819);

// LinearGradient
const kPrimaryGradient = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 10),
    colors: [kPrimaryColor2, kSecondaryColor, klightSecondaryColor]);
const KPurpleLinearGrad = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 10),
    colors: [Color(0XFFC473C4), Color(0XFFA952A9)]);
const Color KCOLOR_FIREFont = Color(0xFF1F274A);

//InputStyle
const KInputSytle = InputDecoration(
  filled: true,
  fillColor: KTextBackground,
  contentPadding: EdgeInsets.symmetric(horizontal: 24),
  border: OutlineInputBorder(
      borderSide: BorderSide(color: KTextBackground),
      borderRadius: KInputRadius),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: KTextBackground),
      borderRadius: KInputRadius),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: KTextBackground),
      borderRadius: KInputRadius),
);
const KInputSytleLine = InputDecoration(
  filled: true,
  fillColor: Colors.transparent,
  contentPadding: EdgeInsets.symmetric(horizontal: 24),
  border: UnderlineInputBorder(
      borderSide: BorderSide(color: KTextBackground),
      borderRadius: KInputRadius),
  focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: KTextBackground),
      borderRadius: KInputRadius),
  enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: KTextBackground),
      borderRadius: KInputRadius),
);



//Input Style with border
const KInputSytleBorder = InputDecoration(
  filled: true,
  fillColor: Colors.transparent,
  contentPadding: EdgeInsets.symmetric(horizontal: 24),
  border: OutlineInputBorder(
      borderSide: BorderSide(
        color: KTextGray,
        width: 0.5,
      ),
      borderRadius: KInputRadius2),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: KTextGray, width: 0.5),
      borderRadius: KInputRadius2),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: KTextGray, width: 0.5),
      borderRadius: KInputRadius2),
);

const KInputRadius2 = BorderRadius.all(Radius.circular(6));
const KInputRadius4 = BorderRadius.all(Radius.circular(4));

const KInputRadius = BorderRadius.all(Radius.circular(8));

const KInput30Radius = BorderRadius.all(Radius.circular(14));

// TextStyle
TextStyle KHB1 = TextStyle(
    fontSize:  SizeConfig().getTextSize(26),
    fontFamily: 'InterRegular',
    color: TextColor,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal);

TextStyle KH1 = TextStyle(
    fontSize:  SizeConfig().getTextSize(26),
    fontFamily: 'InterRegular',
    color: TextColor,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal);
TextStyle KH2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize:  SizeConfig().getTextSize(24),
    color: TextColor,
    fontFamily: 'InterRegular');
TextStyle KH3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize:  SizeConfig().getTextSize(26),
    color: TextColor,
    fontFamily: 'InterRegular');
TextStyle KH4 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize:  SizeConfig().getTextSize(22),
    color: TextColor,
    fontFamily: 'InterRegular');
TextStyle KH5 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize:  SizeConfig().getTextSize(20),
    color: TextColor,
    fontFamily: 'InterRegular');
TextStyle KH5_medium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize:  SizeConfig().getTextSize(20),
    color: TextColor,
    fontFamily: 'InterRegular');

TextStyle KH5_SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(20),
    fontFamily: 'InterRegular');
TextStyle KH6 = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(18),
    fontFamily: 'InterRegular');
TextStyle KH6_normal = TextStyle(
    fontWeight: FontWeight.normal,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(18),
    fontFamily: 'InterRegular');
TextStyle KH6_Medium = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(18),
    fontFamily: 'InterRegular');
TextStyle KH6_SemiBold =
TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(17),
    fontFamily: 'InterRegular');
TextStyle KH7 =
TextStyle(
    fontWeight: FontWeight.w400,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(16),
    fontFamily: 'InterRegular');

TextStyle KH7_Medium = TextStyle(
    fontWeight: FontWeight.w500,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(16),
    fontFamily: 'InterRegular');
TextStyle KH7_SemiBold = TextStyle(
    fontWeight: FontWeight.w700,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(17),
    fontFamily: 'InterRegular');

TextStyle KH8_SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(14),
    fontFamily: 'InterRegular');
TextStyle KH8 = TextStyle(
    fontWeight: FontWeight.normal,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(14),
    fontFamily: 'InterRegular');

TextStyle KH9_bold = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(11),
    fontFamily: 'InterRegular');
TextStyle KH9 = TextStyle(
    fontWeight: FontWeight.normal,
    color: TextColor,
    fontSize:  SizeConfig().getTextSize(12),
    fontFamily: 'InterRegular');

const KboxShaddow = [
  BoxShadow(
      color: Color.fromRGBO(236, 232, 236, 1),
      offset: Offset(1, 6),
      blurRadius: 22)
];
const whiteBgForHome = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(color: Color(0XFFEDE8ED), spreadRadius: 1, blurRadius: 5),
  ],
);

BoxDecoration cardDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.15),
          offset: Offset(1, 6),
          blurRadius: 12)
    ]);
const buttonDecorationBox = BoxDecoration(
  color: kPrimaryColor,
  borderRadius: KInputRadius2,
  // boxShadow: [
  //   BoxShadow(color: Color(0XFFEDE8ED), offset: Offset(0, 1), blurRadius: 8)
  // ],
);
BoxDecoration buttonDecorationEmptyBox = BoxDecoration(
  color: KGiftSessionBg,
  borderRadius: KInputRadius2,
  border: Border.all(color: kPrimaryColor),
);

BoxDecoration bottomNavBarDecorationBox = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: kPrimaryColor.withOpacity(0.2),
      offset: Offset(0.0, -40.0),
      blurRadius: 30.0,
      spreadRadius: 0.2,
    ),
  ],
);
const KboxBorderRadius = BorderRadius.all(Radius.circular(18));
const KboxGradientPink = LinearGradient(
    begin: Alignment(0.27379170060157776, 0.9999999403953552),
    end: Alignment(-0.7333934307098389, 6.3976601794024646e-15),
    colors: [kPrimaryColor, kPrimaryColor]);

const KWhite = LinearGradient(
    // begin: Alignment(0.27379170060157776, 0.9999999403953552),
    // end: Alignment(-0.7333934307098389, 6.3976601794024646e-15),
    colors: [
      Color(0xFFffffff),
      Color(0xFFffffff),
    ]);
// const KWhite = Color(0xFFffffff);
const KButtonboxShaddow = [
  BoxShadow(
      color: Color.fromRGBO(236, 232, 236, 1),
      offset: Offset(1, 6),
      blurRadius: 22)
];
var SearchFieldDeco = InputDecoration(
    border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFFA3A9BF)),
        borderRadius: KInput30Radius),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFFA3A9BF)),
        borderRadius: KInput30Radius),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFFA3A9BF)),
        borderRadius: KInput30Radius),
    prefixIcon: Icon(
      CupertinoIcons.search,
      color: KTextGray,
    ),
    hintText: "Search",
    filled: true,
    fillColor: Colors.white,
    hintStyle: KH7.copyWith(color: KTextGray, fontWeight: FontWeight.w400));
