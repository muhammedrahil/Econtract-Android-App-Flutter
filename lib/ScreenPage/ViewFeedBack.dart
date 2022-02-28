import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class ViewFeedBack extends StatelessWidget {
  const ViewFeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title:const Text("ViewFeedBack"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                height: 40,
              ),
              // login text
              const Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 0, left: 30, right: 30,bottom: 40),
                child: Text(" FeedBacks ",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
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
              // textfield login button
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 200, right: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Search'),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    primary: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19.6, ),
                child: DataTable(  
                columns: [  
                  DataColumn(label: Text(  
                      'Contractor\n    Name',  
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)  
                  )),  
                  DataColumn(label: Text(  
                      'Work',  
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)  
                  )),  
                  DataColumn(label: Text(  
                      'Document', 
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)  
                  )),  
                ],  
                rows: [  
                  DataRow(cells: [  
                    DataCell(Text('1')),  
                    DataCell(Text('Stephen')),  
                    DataCell(Text('Actor')),  
                  ]),  
                  DataRow(cells: [  
                    DataCell(Text('5')),  
                    DataCell(Text('John')),  
                    DataCell(Text('Student')),  
                  ]),  
                  DataRow(cells: [  
                    DataCell(Text('10')),  
                    DataCell(Text('Harry')),  
                    DataCell(Text('Leader')),  
                  ]),  
                  DataRow(cells: [  
                    DataCell(Text('15')),  
                    DataCell(Text('Peter')),  
                    DataCell(Text('Scientist')),  
                  ]),  
                ],  
            ),
              ),  
            ],
          ),
        ),
      ),
    );
  }
}
