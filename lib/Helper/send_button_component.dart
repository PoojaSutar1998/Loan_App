import 'package:flutter/material.dart';

import '../../../../../Helper/SizedConfig.dart';
import 'globle style.dart';

class SendButtonComponent extends StatefulWidget {
  const SendButtonComponent({Key? key}) : super(key: key);

  @override
  State<SendButtonComponent> createState() => _SendButtonComponentState();
}

class _SendButtonComponentState extends State<SendButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
         shape: BoxShape.circle,
          color: themeColor,
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                offset: Offset(1, 6),
                blurRadius: 12)
          ]),
      // height: 50,
      // width: 50,
      padding: EdgeInsets.all(SizeConfig().getTextSize(12)),
      child: Icon(Icons.send,color: Colors.white,size: SizeConfig().getTextSize(30),),
    );
  }
}
