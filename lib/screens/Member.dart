import 'package:dropikmed001/Model/login_model.dart';
import 'package:dropikmed001/Model/memeberlist.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:dropikmed001/utils/AppImages.dart';
import 'package:flutter/material.dart';

import '../Model/leave.dart';
import '../Model/login.dart';
import '../Services/Apiclass.dart';
import '../Services/sessionmanagement.dart';

class Member extends StatefulWidget {
  const Member({Key? key}) : super(key: key);

  @override
  State<Member> createState() => _MemberState();
}

class _MemberState extends State<Member> {
  List<DriverLeavedata> list_member = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Apicall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
      ], backgroundColor: Appcolors.primary),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 20, right: 200),
            child: Text(
              "Members",
              style: TextStyle(
                  color: Appcolors.black,
                  fontSize: 27,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height - 20,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list_member.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      //color: Appcolors.white,
                      color: Color.fromARGB(255, 230, 228, 228),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(38), // Image radius
                            child: Image.network(
                                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 25, top: 3, bottom: 1),
                              child: Text(
                                "${list_member[index].shiftTypeId.name}",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 30, bottom: 1),
                                      ),
                                      Text(
                                        "PickUp",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "${list_member[index].shiftTypeId.inTime}",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("-----"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Drop Off",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        " ${list_member[index].shiftTypeId.outTime}",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on_sharp,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  Text(
                                    "Gota Chokdi",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )),
        ]),
      ),
    );
  }

  void Apicall() async {
    print("get member data");
    HttpService api = HttpService();
    SessionManagement sessionManagement = SessionManagement();
    LoginModel login = await sessionManagement.getModel("Driver");
    print(login.result?.res?.response?.token);
    String? token = login.result?.res?.response?.token;
    String driverid = "63d3b8cef66fc79998531b5b";
    dynamic response = await api.getmember(token!, driverid);
    MembersList leave = response;
    if (leave.message == "Ok") {
      setState(() {
        list_member = leave.driverLeave;
      });
      print("DATA IS :${list_member[0].shiftTypeId.inTime}");
    } else {
      print("data not retrive");
    }
  }
}
