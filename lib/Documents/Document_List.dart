
import 'package:flutter/material.dart';
import '../../Helper/globle style.dart';
import '../VehiclelList/VehicleDummyModel.dart';
import '../VehiclelList/my_Vehicle_view_details.dart';
import 'UploadDocumentScreen.dart';


class My_Document_List extends StatefulWidget {
  final VehicleDetails data;
  final int index;
  My_Document_List({Key? key,required this.data, required this.index}) : super(key: key);

  @override
  State<My_Document_List> createState() => _My_Document_ListState();
}

class _My_Document_ListState extends State<My_Document_List> {
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>
          new upload_documentDetailScreen()));

        },
        child:
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    widget.data.carImage,
                    width: 120,
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.check_circle, color: Colors.grey,size: 15,),
                        SizedBox(width: 10,),
                        Text(
                          "No documents uploaded",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,

                          ),
                        ),

                      ],
                    ),



                  ],
                ),




              ],
            ),
          ),
        ),
      );
  }
}
