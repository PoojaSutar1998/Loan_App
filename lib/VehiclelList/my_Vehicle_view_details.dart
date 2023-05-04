
import 'dart:core';
import 'dart:io';
import 'package:flutter/material.dart';
class my_Vehicle_DetailScreen extends StatefulWidget {
  my_Vehicle_DetailScreen({Key? key}) : super(key: key);

  @override
  State<my_Vehicle_DetailScreen> createState() => _my_Vehicle_DetailScreenState();
}

class _my_Vehicle_DetailScreenState extends State<my_Vehicle_DetailScreen> {
  bool isApiCallProcessing = false;
  late String name = "Vagnera",
      emailid = "loading",
      mobile_no = "loading",
      dob = "";
  late String profile_pic = '';
  String image = "assets/images/Vagnera.png";
  late File icon_img;
  late File pickedImageFile;

  bool isIconSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[200],
          title: const Text(
            "Car Detail",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading:
          IconButton(
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
        body:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.blueGrey[200],
                ),
                child:
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              image,
                              width: 120,
                              height: 150,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:   [
                              Text("John Smith",style: TextStyle(
                                  fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black
                              ),),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "MH12TY5476",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  SizedBox(width: 10), // Add some space between the two Text widgets
                                  Text(
                                    "First Owner",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,

                                    ),
                                  ),
                                ],
                              ),


                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "KUSHAQ AMBITION 1.0TSI AT ",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "PUC expired 27-Jan-2023",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),


                            ],
                          ),




                        ],
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 150,
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),

                        ),
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.black,
                          width: 0.7,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "RC Details",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Text(
                          "Ownership Details",
                          style: TextStyle(fontSize: 18.0,color: Colors.grey[700] ,fontWeight: FontWeight.bold),
                        ),

                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Owner Name",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "John Smith",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Ownwership",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "First Owner",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Registration Date",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "28-Jan-2023",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Financer's Name",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "ICICI BANK LTD",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Registered RTO",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Pune, Maharashtra",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),



                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      ExpansionTile(
                        title: Text(
                          "Vehicle Details",
                          style: TextStyle(fontSize: 18.0,color: Colors.grey[700] ,fontWeight: FontWeight.bold),
                        ),

                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Maker Model",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "SKODA AUTO VOLKSWAGEN INDIA PVT LTD, KUSHQ AMBITION 1.0 TSI AT",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Vehicle Class",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Motor Car(LMV)",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Fule Type",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "PETROL",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Fule Norms",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "BHARAT STAGE VI",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Engine Number",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "DTB0XXXXX",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),



                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      ExpansionTile(
                        title: Text(
                          "Important Dates",
                          style: TextStyle(fontSize: 18.0,color: Colors.grey[700] ,fontWeight: FontWeight.bold),
                        ),

                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Registration Date",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "27-Jan-2023",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Vehicle Age",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "1 year & 2 months",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Fitness uoto",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "27-Jan-2037",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Pollution Upto",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "27-Jan-2023",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Insurance Expiry(Updated today)",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "27-Jan-2025",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Insurance Expiring in",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "1 year & 9 months",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),



                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      ExpansionTile(
                        title: Text(
                          "Other Information",
                          style: TextStyle(fontSize: 18.0,color: Colors.grey[700] ,fontWeight: FontWeight.bold),
                        ),

                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Registration Number",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "MHTY563566",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Vehicle Color",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "CANDY WHITE",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Unloaded weight()kg",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "1234",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "RC Status",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "ACTIVE",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Insurance Expiry(Updated today)",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "27-Jan-2025",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),

                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Insurance Expiring in",
                                    style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "1 year & 9 months",
                                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey[700] ,fontSize:15 ),
                                  ),
                                ],
                              ),
                            ),

                          ),



                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 190,
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),

                        ),
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.black,
                          width: 0.7,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Insurance Details",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/images/img_12.png",
                          width: 100,
                          height: 90,
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:   [
                          Text("Your are insured",style: TextStyle(
                              fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black
                          ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Insurance name",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10), // Add some space between the two Text widgets
                          Text(
                            "Bajaj Allianze General Insurance Co LTd",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,

                            ),
                          ),


                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Insurance expired ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "27-Jan-2023",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),


                        ],
                      ),
                      SizedBox(height: 10,),



                    ],
                  ),
                ),


              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 190,
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),

                        ),
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.black,
                          width: 0.7,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Specification",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child:
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:   [
                            Row(
                              children: [
                                Icon(
                                  Icons.percent,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Range",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.green
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "10lakh-15lakh",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:   [
                            Row(
                              children: [
                                Icon(
                                  Icons.transform_rounded,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Transmission",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.green
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Manual/Automatic",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),





                      ],
                    ),
                  ),
                ),


              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10),
                child:
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:   [
                            Row(
                              children: [
                                Icon(
                                  Icons.traffic,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Mileage",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.green
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "10.778 to 19.3 kmpl",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:   [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Rating",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.green
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),





                      ],
                    ),
                  ),
                ),


              ),



            ],

          ),
        ),


      ),
    );
  }

  void showprogressDialog(String msg) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => new AlertDialog(
          backgroundColor: Colors.yellow[50],
          content: Wrap(children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    msg,
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: CircularProgressIndicator(),
                  )
                ],
              ),
            )
          ])),
    );
  }

  Widget uploadLogoUi() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 30),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                child: isIconSelected
                    ? ClipRRect(
                  child: Image.file(
                    File(icon_img.path),
                    height: 100,
                    width: 100,
                  ),
                )
                    : ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/img_3.png',
                          height: 50, width: 50),
                    )),
              ),
            ],
          ),
        ));
  }
}
