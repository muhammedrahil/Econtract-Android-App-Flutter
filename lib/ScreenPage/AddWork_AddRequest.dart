import 'package:flutter/material.dart';

class AddWork extends StatefulWidget {
  const AddWork({ Key? key }) : super(key: key);

  @override
  State<AddWork> createState() => _AddWorkState();
}

class _AddWorkState extends State<AddWork> {
     final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text('Send Request'),
   
  ),
  body: Form(
      key: _formKey,
    child:  ListView(
      
      scrollDirection: Axis.vertical,
      children: [
        const SizedBox(
          height: 70,
        ),
        // login text
        const Center(
            child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text("Add ",
          
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold)),
        )),
        // textfield username
        Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 30, right: 30),
          child: TextFormField(
            
            controller: null,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'work';
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
              hintText: "Work",
              prefixIcon: Padding(
            padding: EdgeInsets.only(), // add padding to adjust icon
            child: Icon(Icons.work),
          ),
            ),
          ),
        ),
        // textfield password
        Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 30, right: 30),
          child: TextFormField(
            
            controller: null,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'description';
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
              hintText: "description",
              prefixIcon: Padding(
            padding: EdgeInsets.only(), // add padding to adjust icon
            child: Icon(Icons.description),
          ),
            ),
          ),
        ),
        // textfield login button
        Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 120, right: 120),
          child: ElevatedButton(
            onPressed: () {},
            
            child: const Text('Add'),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.grey,
              primary: Colors.blue,
            ),
          ),
        ),
      ],
    ),
  ),
);
  }
}