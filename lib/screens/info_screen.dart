import 'package:flutter/material.dart';
class InfoScreen extends StatelessWidget {
 InfoScreen({Key? key}) : super(key: key);

  String massage = 'No massage ';
  @override
  Widget build(BuildContext context) {

    ModalRoute ? modalRoute = ModalRoute.of(context);
    if(modalRoute != null){

      if(modalRoute.settings.arguments != null){
        if(modalRoute.settings.arguments is Map<String, dynamic> ){
          Map<String, dynamic> map = modalRoute.settings.arguments as Map<String , dynamic>;
          if(map.containsKey('massage'))
          {
            massage = map['massage'];
          }

        }
      }
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },icon:  const Icon(Icons.arrow_back_ios_new,),),
      ),
      body: Text(massage),
    );
  }
}
