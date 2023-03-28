
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}


class _LaunchScreenState extends State<LaunchScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    // print("initstate");
    super.initState();
    Future.delayed( const Duration(seconds: 3), (){
      // print("Futer");
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    print('Build Function');
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [

              Colors.green.shade200,
              Colors.white
            ]
          ),

        ),
        child: Text("مسبحة الاذكار", style: GoogleFonts.arefRuqaa(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      ),
    );
  }
}
