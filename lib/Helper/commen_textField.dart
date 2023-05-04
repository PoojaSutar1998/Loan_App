import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Helper/SizedConfig.dart';
import 'globle style.dart';


class TextFiledBorderWidget extends StatefulWidget {

  String? errorText;
  final TextEditingController controller;
  final bool isEnabled;

  final String label;
  final FocusNode focusNode;
  final String? Function(String?)? validator;
  final  Function(String?)? onChnage;
  final TextInputType inputType;
  final double width;
  final Widget? suffixIcon;
  final VoidCallback? onTapFunction;
  final bool? isReadOnly;
  final bool isPassword;
  final bool isShowSuffixIcon;
  final List<TextInputFormatter>? inputerFormater;
  final VoidCallback? onSuffixTap;
  Color textColor;
  Color fillColor;

  TextFiledBorderWidget(
      {Key? key,
        required this.controller,
        required this.isEnabled,

        required this.label,
        required this.validator,
        required this.width,
        this.errorText,
        required this.inputType,
        this.onChnage,
        this.suffixIcon,
        this.onTapFunction,
        this.isReadOnly,
        required this.focusNode,
        this.isPassword=false,
        this.isShowSuffixIcon=false,
        this.onSuffixTap,
        this.inputerFormater,
        this.textColor=Colors.black,
        this.fillColor=Colors.black38,
      }

      )
      : super(key: key);

  @override
  State<TextFiledBorderWidget> createState() => _TextFiledBorderWidgetState();
}

class _TextFiledBorderWidgetState extends State<TextFiledBorderWidget> {
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: TextFormField(
        controller: widget.controller,
        cursorHeight: SizeConfig().getTextSize(18),
        inputFormatters: widget.inputerFormater,
        enabled: widget.isEnabled,
        keyboardType: widget.inputType,
        onChanged: widget.onChnage,
        obscureText: widget.isPassword ? _obscureText : false,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black54,
          fontSize:  SizeConfig().getTextSize(17),
          fontFamily: 'InterRegular').copyWith(color: widget.textColor),
        decoration: KInputSytle.copyWith(
            contentPadding: EdgeInsets.symmetric(horizontal:  SizeConfig.screenWidth * 0.024,),
            fillColor: KWHITE_COLOR,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: KInputRadius),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: KInputRadius),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: KInputRadius),
            hintText: widget.label,
            errorText: widget.errorText,
            // label:  Text( widget.label,style:  KH7,),
            prefixIconColor: widget.focusNode.hasFocus ? kPrimaryColor :KTextBlack,
            hintStyle: KH7.copyWith(color: widget.textColor),
            suffixIcon: widget.suffixIcon
        ),
        validator: widget.validator,
        onTap: widget.onTapFunction,
        readOnly: widget.isReadOnly??false,


      ),
    );

  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget? _getSuffixIcon(TextFiledBorderWidget widget) {
    return (widget.isShowSuffixIcon
        ?
    ( widget.isPassword
        ? IconButton(
        icon: Icon(_obscureText ?
        Icons.visibility_off : Icons.visibility,
            color: Theme.of(context).hintColor.withOpacity(0.3)),
        onPressed: _toggle
    )
        : IconButton(
      onPressed: widget.onSuffixTap,
      icon: widget.suffixIcon!,)
    )
        : null
    );



  }
}