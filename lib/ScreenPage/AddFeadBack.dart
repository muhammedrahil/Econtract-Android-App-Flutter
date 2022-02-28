import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class AddFeedBack extends StatefulWidget {
  const AddFeedBack({ Key? key }) : super(key: key);

  @override
  _AddFeedBackState createState() => _AddFeedBackState();
}

class _AddFeedBackState extends State<AddFeedBack> {
     final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text('FeedBack'),
  ),
  body: SafeArea(
    child: Form(
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
            padding: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Text("FeedBack ",
            
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold)),
          )),
           Padding(
            padding: const EdgeInsets.all(12.0),
            child: DropdownSearch<String>(
                //mode of dropdown
                mode: Mode.DIALOG,
                //to show search box
                showSearchBox: true,
                showSelectedItems: true,
                //list of dropdown items
                items: [
                  "India",
                  "USA",
                  "Brazil",
                  "Canada",
                  "Australia",
                  "Singapore"
                ],
                label: "Country",
                onChanged: print,
                //show selected item
                selectedItem: "India",
              ),
          ),
          // textfield username
          Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: TextFormField(
              
              controller: null,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'FeedBack';
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
                hintText: "FeedBack",          
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
  ),
);
  }
}