import 'package:flutter/material.dart';
class InputFiled extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter Your Maild:",
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none

            ),
          ),
        )
      ],

    );
  }
}
