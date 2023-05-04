

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:loan_app/Helper/navigation_helper.dart';

import '../Dashboard/Car_details_page.dart';
import '../Documents/Document_List.dart';
import '../Helper/globle style.dart';
import '../VehiclelList/VehicleDummyModel.dart';
import '../VehiclelList/Vehicle_List.dart';
import 'Pdf_viewer.dart';

class CoustmerDetailScreen extends StatefulWidget {
  CoustmerDetailScreen({Key? key}) : super(key: key);

  @override
  State<CoustmerDetailScreen> createState() => _CoustmerDetailScreenState();
}

class _CoustmerDetailScreenState extends State<CoustmerDetailScreen>
    with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 3, vsync: this);
  String document="";
  late File filedocument;
  bool isfileuploaded=false;


  @override
  void initState() {
    super.initState();
    print(vehicles.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(
            "My Profile",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 25.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: themeColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "John Smith",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Pune, Maharashtra",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          height: 60,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: themeColor)),
                          child: const Icon(
                            Icons.person,
                            color:themeColor,
                            size: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(
                    text: 'Personal Info',
                  ),
                  Tab(text: 'My Vehicles'),
                  Tab(text: 'Documents'),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                indicatorColor: themeColor,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 520,
                child:
                TabBarView(
                  controller: _tabController,
                  children: [
                    // Your details screen widget
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Contact Number",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: TextColor,
                                    fontSize: 13,
                                    fontFamily: 'InterRegular'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "0987654321",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: TextColor,
                                    fontSize: 15,
                                    fontFamily: 'InterRegular'),
                              ),
                              const Divider(
                                thickness: 0.4,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Email Id",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: TextColor,
                                    fontSize: 13,
                                    fontFamily: 'InterRegular'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "johnsmith@gmail.com",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: TextColor,
                                    fontSize: 15,
                                    fontFamily: 'InterRegular'),
                              ),
                              const Divider(
                                thickness: 0.4,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: TextColor,
                                    fontSize: 13,
                                    fontFamily: 'InterRegular'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Hadapsar, Pune Maharashtra",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: TextColor,
                                    fontSize: 15,
                                    fontFamily: 'InterRegular'),
                              ),
                              const Divider(
                                thickness: 0.4,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Blood group",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: TextColor,
                                    fontSize: 13,
                                    fontFamily: 'InterRegular'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "O+",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: TextColor,
                                    fontSize: 15,
                                    fontFamily: 'InterRegular'),
                              ),
                              const Divider(
                                thickness: 0.4,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Date of birth",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: TextColor,
                                    fontSize: 13,
                                    fontFamily: 'InterRegular'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "12-Nov-1994",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: TextColor,
                                    fontSize: 15,
                                    fontFamily: 'InterRegular'),
                              ),
                              const Divider(
                                thickness: 0.4,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Job Role",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: TextColor,
                                    fontSize: 13,
                                    fontFamily: 'InterRegular'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Developer",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: TextColor,
                                    fontSize: 15,
                                    fontFamily: 'InterRegular'),
                              ),
                              const Divider(
                                thickness: 0.4,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Employement Type",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: TextColor,
                                    fontSize: 13,
                                    fontFamily: 'InterRegular'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Self Employed",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: TextColor,
                                    fontSize: 15,
                                    fontFamily: 'InterRegular'),
                              ),
                              const Divider(
                                thickness: 0.4,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Your vehicle screen here..
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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

                    //Your Document screen here..
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: vehicles.length,
                        itemBuilder: (context, index) {
                          return
                            My_Document_List(
                              data: vehicles[index],
                              index: index,
                            );
                        },
                      ),
                    ),

                  ],
                ),


              )],
                ),
              ),

          );

  }


  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(" Confirmation"),
          content: const Text("Are you sure you want to upload this document?"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Yes"),
            ),
            TextButton(
              onPressed: () {

                Navigator.of(context).pop();
              },
              child: const Text("No"),
            ),
          ],
        );
      },
    );
  }
}
