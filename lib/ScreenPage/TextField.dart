import 'package:flutter/material.dart';

class TextFeild extends StatelessWidget {
  final String texthind;
   TextFeild({ Key? key, required this.texthind }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.black, width: 3.0)),
                    hintText: texthind,
                  ),
                ),
              );
  }
}