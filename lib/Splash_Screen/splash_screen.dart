import 'package:flutter/material.dart';
import '../Dashboard/home_screen (3).dart';
import '../Helper/SizedConfig.dart';
import '../login/login (1).dart';
import 'car_assistants.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  String logo='assets/images/applogo.jpg';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(width: 100,
                height: 100,
                child:
                Image.asset(logo)),
          ),
        ),
      ),
    );
  }
  redirect() async {
    await Future.delayed(Duration.zero);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

}


