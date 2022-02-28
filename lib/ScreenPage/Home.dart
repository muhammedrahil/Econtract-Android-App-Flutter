import 'package:econtractor/ScreenPage/AddFeadBack.dart';
import 'package:econtractor/ScreenPage/AddWork_AddRequest.dart';
import 'package:econtractor/ScreenPage/SentComplaint.dart';
import 'package:econtractor/ScreenPage/ViewContractor.dart';
import 'package:econtractor/ScreenPage/ViewFeedBack.dart';
import 'package:econtractor/ScreenPage/ViewReplay.dart';
import 'package:flutter/material.dart';

import 'ContractorChatList.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Econtract"),
      centerTitle: true,),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
            height: 10,
          ),
            //1
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                    Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const AddWork();
                          }));
                },
                child: Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius: 10)],
                      color: Colors.deepPurple[100] ,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Add Work and Sent Request")),
                ),
              ),
            ),
            //2
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                 Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const ViewContractorWork();
                          }));
                },
                child: Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                     boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius: 10)],

                      color: Colors.indigo[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("View Contractor Work")),
                ),
              ),
            ),
            //3
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  print("View Request Status");
                },
                child: Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius: 10)],
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("View Request Status")),
                ),
              ),
            ),
            //4
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                   Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const SendComplaint();
                          }));
                },
                child: Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius: 10)],
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Sent Complaint")),
                ),
              ),
            ),
            //5
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                 Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const ViewReplay();
                          }));
                },
                child: Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius: 10)],
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("View Replay")),
                ),
              ),
            ),
            //6
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const AddFeedBack();
                          }));
                },
                child: Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius: 10)],
                      color: Colors.redAccent[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Sent FeedBack")),
                ),
              ),
            ),
             //7
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const ViewFeedBack();
                          }));
                },
                child: Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius: 10)],
                      color: Colors.cyan[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("View FeedBack")),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const ContractorChatList();
                          }));
        },
        child: Icon(Icons.chat),
      ),
    );
  }
}
