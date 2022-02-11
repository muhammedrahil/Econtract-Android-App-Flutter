import 'package:econtractor/ScreenPage/TextField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(       
        title: Text(
          'LOGIN',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: SafeArea(
        child: Center(
          
          child: ListView(
      scrollDirection: Axis.vertical,   

            children: [
              SizedBox(height: 150,),
              TextFeild(texthind: "enter User Name",),
               TextFeild(texthind: "enter Password",),

              Padding(
                padding: const EdgeInsets.only(top: 30,left: 120,right: 120),
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
            ],
          ),
        ),
      ),
    );
  }
}
