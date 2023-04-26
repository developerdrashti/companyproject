import 'package:dotted_line/dotted_line.dart';
import 'package:dropikmed001/Model/Profile.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Services/Apiclass.dart';
import 'package:dropikmed001/Services/sessionmanagement.dart';
import 'package:dropikmed001/screens/Profile_detail.dart';
import 'package:dropikmed001/utils/AppImages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/login_model.dart';
import '../utils/AppColors.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Profile_screen();
}

class Profile_screen extends State<ProfileScreen> {
  String Name = "";
  String email = "";
  String contactno = "";
  String address = "";
  String department = "";
  String shifttype = "";
  String pic = "";
  List<DriverOneMemberDetail> detail = [];
  @override
  void initState() {
    super.initState();
    Apicall();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.primary,
        title: Text(
          "Profile Details",
          style: TextStyle(
              fontFamily: "OpenSans", color: Colors.white, fontSize: 20),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                // showAlertDialog(context);
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.notifications_none),
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 0, top: 20),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Appcolors.primary,
                            width: 3.0,
                            style: BorderStyle.solid),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16.0,
                        child: ClipRRect(
                          child: Image.asset(
                            Appimages.bus,
                            height: 200,
                            width: 200,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile_details(detail)));
                        print("Add details");
                      },
                      child: Container(
                          margin: const EdgeInsets.only(left: 75, top: 80),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Icon(Icons.edit)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(Name), Text(contactno), Text(email)],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Department Name",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: "OpenSans"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: MediaQuery.of(context).size.width,
              child: Text(
                department,
                style: TextStyle(fontSize: 20, fontFamily: "OpenSans"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Shift Type",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: "OpenSans"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: MediaQuery.of(context).size.width,
              child: Text(
                shifttype,
                style: TextStyle(fontSize: 20, fontFamily: "OpenSans"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Address",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: "OpenSans"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: MediaQuery.of(context).size.width,
              child: Text(
                address,
                style: TextStyle(fontSize: 20, fontFamily: "OpenSans"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void Apicall() async {
    HttpService httpService = HttpService();
    SessionManagement sessionManagement = await SessionManagement();
    LoginModel profile = await sessionManagement.getModel("Driver");
    String? token = profile.result?.res?.response?.token;
    String driverid = "641c01c19dde0ce876fc5b77";
    print(driverid);
    dynamic response = await httpService.getprofiledata(token!, driverid);
    Profile profiledetail = response;
    detail = profiledetail.driverOneMemberDetails;
    if (profiledetail.message == "Ok") {
      setState(() {
        Name = detail![0].memberName;
        contactno = detail[0]!.memberPhoneNo;
        email = detail[0]!.memberEmail;
        department = detail[0]!.memberDepartmentName;
        shifttype = detail[0]!.memberShiftName;
        address = detail[0]!.memberAddress;
      });
    } else {
      print("Data not found");
    }
  }
}
