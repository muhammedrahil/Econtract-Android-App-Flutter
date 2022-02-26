import 'package:econtractor/funtion.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String url = '';
   var data,output="";

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Center(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  // login text
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("LOGIN",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  )),
                  // textfield username
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 30, right: 30),
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter username';
                        }
                        return null;
                      },
                      obscureText: false,
                      autofocus: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 3.0)),
                        hintText: "enter your username",
                      ),
                    ),
                  ),
                  // textfield password
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 30, right: 30),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                      obscureText: true,
                      autofocus: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 3.0)),
                        hintText: "enter your password",
                      ),
                    ),
                  ),
                  // textfield login button
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 120, right: 120),
                    child: ElevatedButton(
                      onPressed: () async {
                        print(
                          nameController.text,
                        );
                        print(passwordController.text);
                        var uname = nameController.text.toString();
                        var passd = passwordController.text.toString();
                        print(_formKey.currentState!.validate());
                        if(!_formKey.currentState!.validate()){
                          print("not dataaaaaaaaas");
                        }
                        else{
                          SharedPreferences pref =await SharedPreferences.getInstance();
                          print(uname);
                          final ipaddress =pref.getString('ip') ?? '';
                          print(ipaddress);
                          url = 'http://' + ipaddress + ':5000/login?uname=' + uname + "&password=" +passd;
                          print(url);
                          data = await fetchdata(url);
                          print(data);
                        }
                      },
                      child: const Text('LOGIN'),
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
        ),
      ),
    );
  }
}
