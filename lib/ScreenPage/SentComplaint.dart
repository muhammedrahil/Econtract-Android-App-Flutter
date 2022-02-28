import 'package:flutter/material.dart';

class SendComplaint extends StatefulWidget {
  const SendComplaint({ Key? key }) : super(key: key);

  @override
  _SendComplaintState createState() => _SendComplaintState();
}

class _SendComplaintState extends State<SendComplaint> {
   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text('complaints'),
   
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
          child: Text("complaints ",
          
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
                return 'COMPLAINTS';
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
              hintText: "complaint",
              prefixIcon: const Padding(
            padding: EdgeInsets.only(), // add padding to adjust icon
            child: Icon(Icons.construction),
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
            
            child: const Text('send'),
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