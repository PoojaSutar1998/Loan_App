import 'dart:convert';

import 'package:flutter/material.dart';

import '../Helper/globle style.dart';
import 'VehicleDummyModel.dart';
import 'Vehicle_List.dart';

class My_Vehicle_ListScreen extends StatefulWidget {
  const My_Vehicle_ListScreen({Key? key}) : super(key: key);

  @override
  State<My_Vehicle_ListScreen> createState() => _My_Vehicle_ListScreenState();
}

class _My_Vehicle_ListScreenState extends State<My_Vehicle_ListScreen> {
  bool isApiCallProcessing = false;

  String campaignStatus='';
  @override
  void initState() {
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: themeColor,
        title: const Text(
          "My Vehicle",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        child:
        ListView.builder(
          itemCount: vehicles.length,
          itemBuilder: (context, index) {
            return
              my_Vehicle_List(
                data: vehicles[index],
                index: index,
              );
          },
        ),
      ),

    );
  }

}
