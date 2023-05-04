import 'package:flutter/material.dart';

import '../../../Helper/SizedConfig.dart';
import '../../../Helper/globle style.dart';

class ContentComponentFull extends StatefulWidget {
  final String title,data;
  const ContentComponentFull({Key? key, required this.title, required this.data}) : super(key: key);

  @override
  State<ContentComponentFull> createState() => _ContentComponentState();
}

class _ContentComponentState extends State<ContentComponentFull> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: SizeConfig.screenWidth ,
      // color: klightSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("${widget.title}",style: KH8.copyWith(color: KCOLOR_LigthPink),),
          SizedBox(height: 5,),
          Text("${widget.data}",style: KH8,maxLines: 1,overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}
