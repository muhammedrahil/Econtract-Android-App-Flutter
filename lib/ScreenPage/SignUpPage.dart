import 'package:econtractor/ScreenPage/TextField.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController userpasswordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController postController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text("SIGN UP",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            )),
            // textfield username
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: usernameController,
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
                    hintText: "enter your username",
                  ),
                ),
              ),
              // textfield password
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: userpasswordController,
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
                            BorderSide(color: Colors.black, width: 3.0)),
                    hintText: "enter your password",
                  ),
                ),
              ),
            SizedBox(
              height: 20,
            ),
                   // textfield username
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: firstnameController,
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
                    hintText: "enter your firstname",
                  ),
                ),
              ),
                   // textfield username
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: lastnameController,
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
                    hintText: "enter your lastname",
                  ),
                ),
              ),
                   // textfield username
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: placeController,
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
                    hintText: "enter your place",
                  ),
                ),
              ),
                  // textfield username
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: postController,
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
                    hintText: "enter your post",
                  ),
                ),
              ),
                  // textfield username
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: pinController,
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
                    hintText: "enter your pin number",
                  ),
                ),
              ),
                  // textfield username
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: TextField(
                   controller: phoneController,
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
                    hintText: "enter your phone number",
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 120,
                right: 120,
                bottom: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                  print(usernameController.text);
                  print(userpasswordController.text);
                  print(firstnameController.text);
                  print(lastnameController.text);
                  print(placeController.text);
                  print(postController.text);
                  print(pinController.text);
                  print(phoneController.text);
                  
                },
                child: Text('sign in'),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  primary: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
