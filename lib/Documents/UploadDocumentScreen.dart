
import 'dart:core';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../Helper/globle style.dart';
import '../Helper/navigation_helper.dart';
import '../Profile/Pdf_viewer.dart';
class upload_documentDetailScreen extends StatefulWidget {
  upload_documentDetailScreen({Key? key}) : super(key: key);

  @override
  State<upload_documentDetailScreen> createState() => _upload_documentDetailScreenState();
}

class _upload_documentDetailScreenState extends State<upload_documentDetailScreen> {
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
  String document="";
  late File filedocument;
  bool isfileuploaded=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[20],
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(
            "Upload and view Documents",
            style: TextStyle(
              color: Colors.white,
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
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color:themeColor,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:   [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Uploads Your Docs",style: TextStyle(
                                  fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black
                              ),),
                              GestureDetector(
                                onTap: () async {
                                  if (document.isNotEmpty) {
                                    push(context, Pdf_viewer(document));
                                  } else {
                                    FilePickerResult? result = await FilePicker.platform
                                        .pickFiles(
                                        type: FileType.custom,
                                        allowedExtensions: ['pdf', 'doc'],
                                        allowMultiple: false);
                                    if (result != null) {
                                      PlatformFile file = result.files.first;
                                      filedocument =File(file.path!);
                                      isfileuploaded = true;
                                      print(file.name);
                                      //print(file.bytes);
                                      print(file.size);
                                      print(file.extension);
                                      print(file.path);
                                      showAlert(context);
                                    } else {
                                      print('No file selected');
                                    }
                                    //showAlert();
                                    setState(() {});
                                  }
                                },
                                child: Icon(
                                  Icons.upload_file,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Access your docs anytime",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: TextColor,
                                fontSize: 15,
                                fontFamily: 'InterRegular'),
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
                          "All docs",
                          style: TextStyle(
                            fontSize: 17,
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
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        Text("Insurance",style: TextStyle(
                            fontSize: 20,fontWeight:FontWeight.bold,color: Colors.grey[700]
                        ),),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text("Uploads Your Docs",style: TextStyle(
                                fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black
                            ),),
                            GestureDetector(
                              onTap: () async {
                                if (document.isNotEmpty) {
                                  push(context, Pdf_viewer(document));
                                } else {
                                  FilePickerResult? result = await FilePicker.platform
                                      .pickFiles(
                                      type: FileType.custom,
                                      allowedExtensions: ['pdf', 'doc'],
                                      allowMultiple: false);
                                  if (result != null) {
                                    PlatformFile file = result.files.first;
                                    filedocument =File(file.path!);
                                    isfileuploaded = true;
                                    print(file.name);
                                    //print(file.bytes);
                                    print(file.size);
                                    print(file.extension);
                                    print(file.path);
                                    showAlert(context);
                                  } else {
                                    print('No file selected');
                                  }
                                  //showAlert();
                                  setState(() {});
                                }
                              },
                              child: Icon(
                                Icons.upload_file,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Keep your vehicle secured  with valid insurance",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: TextColor,
                              fontSize: 15,
                              fontFamily: 'InterRegular'),
                        ),


                      ],
                    ),
                  ),
                ),

              ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        Text("Pollution",style: TextStyle(
                            fontSize: 20,fontWeight:FontWeight.bold,color: Colors.grey[700]
                        ),),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Uploads Your Docs",style: TextStyle(
                                fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black
                            ),),
                            GestureDetector(
                              onTap: () async {
                                if (document.isNotEmpty) {
                                  push(context, Pdf_viewer(document));
                                } else {
                                  FilePickerResult? result = await FilePicker.platform
                                      .pickFiles(
                                      type: FileType.custom,
                                      allowedExtensions: ['pdf', 'doc'],
                                      allowMultiple: false);
                                  if (result != null) {
                                    PlatformFile file = result.files.first;
                                    filedocument =File(file.path!);
                                    isfileuploaded = true;
                                    print(file.name);
                                    //print(file.bytes);
                                    print(file.size);
                                    print(file.extension);
                                    print(file.path);
                                    showAlert(context);
                                  } else {
                                    print('No file selected');
                                  }
                                  //showAlert();
                                  setState(() {});
                                }
                              },
                              child: Icon(
                                Icons.upload_file,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Keep PUC Certificate handy",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: TextColor,
                              fontSize: 15,
                              fontFamily: 'InterRegular'),
                        ),


                      ],
                    ),
                  ),
                ),

              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        Text("Registration Details",style: TextStyle(
                            fontSize: 20,fontWeight:FontWeight.bold,color: Colors.grey[700]
                        ),),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Uploads Your Docs",style: TextStyle(
                                fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black
                            ),),
                            GestureDetector(
                              onTap: () async {
                                if (document.isNotEmpty) {
                                  push(context, Pdf_viewer(document));
                                } else {
                                  FilePickerResult? result = await FilePicker.platform
                                      .pickFiles(
                                      type: FileType.custom,
                                      allowedExtensions: ['pdf', 'doc'],
                                      allowMultiple: false);
                                  if (result != null) {
                                    PlatformFile file = result.files.first;
                                    filedocument =File(file.path!);
                                    isfileuploaded = true;
                                    print(file.name);
                                    //print(file.bytes);
                                    print(file.size);
                                    print(file.extension);
                                    print(file.path);
                                    showAlert(context);
                                  } else {
                                    print('No file selected');
                                  }
                                  //showAlert();
                                  setState(() {});
                                }
                              },
                              child: Icon(
                                Icons.upload_file,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Save your vehicle RC for quick access anytime",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: TextColor,
                              fontSize: 15,
                              fontFamily: 'InterRegular'),
                        ),


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
