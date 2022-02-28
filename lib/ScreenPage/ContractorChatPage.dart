import 'package:flutter/material.dart';

class ContractorChatPage extends StatelessWidget {
  const ContractorChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ContractorChatPage"),centerTitle: true,),
      
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Sent chat");
        },
        child: Icon(Icons.chat),
      ),
    );
  }
}