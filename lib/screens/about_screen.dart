import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
   AboutScreen({Key? key,required this.massage}) : super(key: key);
 String massage ;
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}


class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
      ),
      body: Center(
        child: Text(widget.massage,),
      ),
    );
  }
}
