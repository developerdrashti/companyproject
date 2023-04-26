import 'package:dropikmed001/Model/leave.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Model/login_model.dart';
import 'package:dropikmed001/Services/sessionmanagement.dart';
import 'package:dropikmed001/screens/Change_Vehical.dart';
import 'package:dropikmed001/screens/Leave_detail.dart';
import 'package:dropikmed001/screens/Member.dart';
import 'package:dropikmed001/screens/Profile.dart';
import 'package:dropikmed001/screens/Message.dart';

import 'package:dropikmed001/utils/AppColors.dart';
import 'package:dropikmed001/utils/AppImages.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:intl/intl.dart';

import '../Model/login.dart';
import '../Services/Apiclass.dart';

class LeaveScreen extends StatefulWidget {
  State<LeaveScreen> createState() => _LeaveState();
}

class _LeaveState extends State<LeaveScreen> {
  List<DriverLeave> list_driver = [];
  bool isapprooved = false;
  @override
  void initState() {
    super.initState();
    Apicall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Appcolors.primary,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Leave_detail()));
        },
      ),
      appBar: AppBar(
        backgroundColor: Appcolors.primary,
        title: Text(
          "Leave",
          style: TextStyle(
              fontFamily: "OpenSans", color: Colors.white, fontSize: 20),
        ),
        leading: GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(Icons.menu),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                // showAlertDialog(context);
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.notifications_none),
              )),
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: list_driver.length,
                        itemBuilder: (context, index) {
                          String startdate = list_driver.isEmpty
                              ? "Date"
                              : DateFormat("dd/MM/yyyy")
                                  .format(list_driver[index].startDate);
                          String enddate = list_driver.isEmpty
                              ? "Date"
                              : DateFormat("dd/MM/yyyy")
                                  .format(list_driver[index].endDate);
                          return Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 204, 204, 204),
                                    offset: const Offset(
                                      0.0,
                                      5.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: 0.5,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "$startdate to $enddate",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: DottedLine(
                                      direction: Axis.horizontal,
                                      lineLength: double.infinity,
                                      lineThickness: 1.0,
                                      dashLength: 4.0,
                                      dashColor:
                                          Color.fromARGB(255, 170, 170, 170),
                                      dashRadius: 0.0,
                                      dashGapLength: 4.0,
                                      dashGapColor: Colors.transparent,
                                      dashGapRadius: 0.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      list_driver.isEmpty
                                          ? "reson"
                                          : list_driver[index].reason,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 134, 134, 134),
                                          fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    child: DottedLine(
                                      direction: Axis.horizontal,
                                      lineLength: double.infinity,
                                      lineThickness: 1.0,
                                      dashLength: 4.0,
                                      dashColor:
                                          Color.fromARGB(255, 170, 170, 170),
                                      dashRadius: 0.0,
                                      dashGapLength: 4.0,
                                      dashGapColor: Colors.transparent,
                                      dashGapRadius: 0.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 50, top: 5),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 207, 207, 207),
                                                    offset: const Offset(
                                                      0.0,
                                                      5.0,
                                                    ),
                                                    blurRadius: 2.0,
                                                    spreadRadius: 1.0,
                                                  ),
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 238, 238, 238),
                                                    offset:
                                                        const Offset(0.0, 0.0),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  list_driver.isEmpty
                                                      ? "reson"
                                                      : list_driver[index]
                                                          .leaveTypeId
                                                          .name,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromARGB(
                                                          255, 196, 105, 19),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                        ),
                                        Expanded(
                                          child: Container(
                                              margin: EdgeInsets.all(10),
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 207, 207, 207),
                                                    offset: const Offset(
                                                      0.0,
                                                      5.0,
                                                    ),
                                                    blurRadius: 2.0,
                                                    spreadRadius: 1.0,
                                                  ),
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 238, 238, 238),
                                                    offset:
                                                        const Offset(0.0, 0.0),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  list_driver.isEmpty
                                                      ? "reson"
                                                      : list_driver[index]
                                                          .shiftTypeId
                                                          .name,
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 196, 105, 19),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                              )),
                                        ),
                                        Expanded(
                                          child: Container(
                                              height: 30,
                                              margin: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 207, 207, 207),
                                                    offset: const Offset(
                                                      0.0,
                                                      5.0,
                                                    ),
                                                    blurRadius: 2.0,
                                                    spreadRadius: 1.0,
                                                  ),
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 238, 238, 238),
                                                    offset:
                                                        const Offset(0.0, 0.0),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  list_driver.isEmpty
                                                      ? "reson"
                                                      : list_driver[index]
                                                          .isApproved
                                                          .toString(),
                                                  style: TextStyle(
                                                      color: isapprooved ==
                                                              list_driver[index]
                                                                  .isApproved
                                                          ? Colors.black
                                                          : Colors.green,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ));
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }

  void Apicall() async {
    HttpService api = HttpService();
    SessionManagement sessionManagement = SessionManagement();
    LoginModel login = await sessionManagement.getModel("Driver");
    print(login.result?.res?.response?.token);
    String? token = login.result?.res?.response?.token;
    String driverid = "63d3b8cef66fc79998531b5b";
    dynamic response = await api.getdatadriver(token!, driverid);
    print(response);
    DriverLeaveList leave = response;
    if (leave.message == "Ok") {
      setState(() {
        list_driver = leave.driverLeave;
      });
      print(list_driver);
    } else {
      print("data not retrive");
    }
  }
}
