import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(),
      appBar:AppBar(),
      body: SafeArea(child: Center(child: Text("hello")),),
      
    );
  }
}