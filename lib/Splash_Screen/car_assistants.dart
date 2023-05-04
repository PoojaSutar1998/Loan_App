import 'package:flutter/material.dart';
import '../Helper/SizedConfig.dart';
import '../login/login (1).dart';


class CarAssistant extends StatefulWidget {
  const CarAssistant({Key? key}) : super(key: key);

  @override
  State<CarAssistant> createState() => _CarAssistantState();
}

class _CarAssistantState extends State<CarAssistant> {

  String logo = 'assets/images/img_1.png';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: Container(
       width: double.infinity,
       height: MediaQuery.of(context).size.height,
       child: Center(
         child: Stack(
           children: [
             Positioned(
               bottom: 200,
               left: 0,
               right: 0,
               child: Column(
                 children: [
                   Image.asset(logo,width: 500,
                     height: 500,
                   ),
                   // const Text("Car Assistant",style: TextStyle(
                   //   fontSize: 29,
                   //   color: Colors.black54,
                   // ),)
                 ],
               ),
             ),
         Positioned(
           bottom: 20,
           left: 0,
           right: 0,
           child: Padding(
             padding: const EdgeInsets.all(40.0),
             child: GestureDetector(
               onTap: () async {
                 await Future.delayed(Duration.zero);
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
               },
               child: Container(
                 height: 50,
                 decoration: const BoxDecoration(
                   color: Colors.cyan,
                   borderRadius: const BorderRadius.all(Radius.circular(30),),
                 ),
                 child: const Center(
                   child: Text('Get Started',style: TextStyle(
                     color: Colors.white,
                       fontSize: 18,
                       fontWeight: FontWeight.w500
                   ),),
                 ),
               ),
             ),
           )
         ),

       ]),

     ),
    ),
    );

  }


}
