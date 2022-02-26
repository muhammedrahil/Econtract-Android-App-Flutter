import 'package:econtractor/ScreenPage/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ipSet extends StatefulWidget {
  const ipSet({ Key? key }) : super(key: key);

  @override
  State<ipSet> createState() => _ipSetState();
}

class _ipSetState extends State<ipSet> {
  @override
  Widget build(BuildContext context) {
      TextEditingController IPController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: SafeArea(child: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const SizedBox(
                height: 20,
              ),
              // login text
              const Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(" SET IP",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              )),
              //TEXT PAGE IP ADDRESS
            Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: IPController,
                  obscureText: false,
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
                            const BorderSide(color: Colors.black, width: 3.0)),
                    hintText: "enter your ipAddress",
                  ),
                ),
              ),
              //BUTTON
               Padding(
                padding: const EdgeInsets.only(top: 30, left: 120, right: 120),
                child: ElevatedButton(
                  onPressed: () async {
                     var ip=IPController.text.toString();
                  print(ip);
                  SharedPreferences pref= await  SharedPreferences.getInstance();
                  pref.setString('ip', ip);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) =>  LoginPage()));
                  },
                  child: Text('SET'),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    primary: Colors.blue,
                  ),
                ),
              ),

          ],
        ),
      ),),
      
    );
  }
}