import 'package:econtractor/ScreenPage/TextField.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(        
        title: Text(
          'SIGN UP',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: SafeArea(
        child:Center(
          child: ListView(  
            scrollDirection: Axis.vertical,   
            children: [
              TextFeild(texthind: "enter User Name",),
              TextFeild(texthind: "enter password ",),
              TextFeild(texthind: "enter User Name",),
              TextFeild(texthind: "enter first Name",),
              TextFeild(texthind: "enter last Name",),
              TextFeild(texthind: "enter place",),
              TextFeild(texthind: "enter post",),
              TextFeild(texthind: "enter User Name",),
              TextFeild(texthind: "enter User Name",),
              TextFeild(texthind: "enter User Name",),
               Padding(
                  padding: const EdgeInsets.only(top: 20,left: 120,right: 120,bottom: 20,),
                  child: ElevatedButton(
                    onPressed: () {
                      print("object");
                    },
                    child: Text('LOGIN'),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.blue,
                    ),
                  ),
                ),

          ],),
        )
        ),
        
      
    );
  }
}