import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class ContractorChatList extends StatelessWidget {
  const ContractorChatList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: const Center(
                child: Text(
              'Contarctor List',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
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
                " SoftWear Engineer",
                "USA",
                "Brazil",
                "Canada",
                "Australia",
                "Singapore"
              ],
              label: "Country",
              onChanged: print,
              //show selected item
              selectedItem: "SoftWear Engineer",
            ),
          ),
          DataTable(
            columns: [
              DataColumn(
                  label: Text('Name',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('     Work &\nExperience',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(
                  onLongPress: () {
                    print("object");
                  },
                  cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Stephen')),
                    DataCell(Icon(Icons.chat_outlined), onTap: () {
                     
                    }),
                  ]),
            ],
          ),
        ])));
  }
}