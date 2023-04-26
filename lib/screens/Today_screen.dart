import 'dart:convert';
import 'package:dropikmed001/Model/AddDriverLeave.dart';
import 'package:dropikmed001/Model/Leavetype.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Model/login_model.dart';
import 'package:dropikmed001/Model/shifttype.dart';
import 'package:dropikmed001/Services/Apiclass.dart';
import 'package:dropikmed001/Services/sessionmanagement.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class Today_Leave extends StatefulWidget {
  const Today_Leave({Key? key}) : super(key: key);

  @override
  State<Today_Leave> createState() => _Today_LeaveState();
}

class _Today_LeaveState extends State<Today_Leave> {
  String? _chosenValue1;
  String? _chosenValue2;

  bool backgroundNotification = true;
  int drodownvl = 0;
  var notificationmessege;

  LeaveType? fetchdetils;
  ShiftType? fetchdetil;
  List<DropdownMenuItem<String>>? items1 = [];
  List<DropdownMenuItem<String>>? items2 = [];

  List<LeaveTypeElement> _dropdownItems = [];
  LeaveTypeElement? _itemSelected;
  List<DropdownMenuItem<LeaveTypeElement>>? _dropdownMenuItems;
  List<ShiftTypeElement> _dropdownItems1 = [];
  ShiftTypeElement? _itemSelected1;
  List<DropdownMenuItem<ShiftTypeElement>>? _dropdownMenuItems1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdataForshift();
    // getAllCategory();
    getdataForleave();
    //  print("abcd${fetchdetils}");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Text(
                "Leave Type",
                style: TextStyle(
                    color: Appcolors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans'),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.08),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    hint: Text('Please select'),
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    value: _itemSelected,
                    items: _dropdownMenuItems,
                    onChanged: (value) {
                      setState(() {
                        _itemSelected = value as LeaveTypeElement?;
                      });
                    }),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Text(
                    "Shift Type",
                    style: TextStyle(
                        color: Appcolors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans'),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding:
                      EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        hint: Text('Please select'),
                        isExpanded: true,
                        icon: Icon(
                          Icons.arrow_drop_down,
                        ),
                        value: _itemSelected1,
                        items: _dropdownMenuItems1,
                        onChanged: (value) {
                          setState(() {
                            _itemSelected1 = value;
                          });
                        }),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Text(
                        "Reason",
                        style: TextStyle(
                            color: Appcolors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'OpenSans'),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 150,
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.05)),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 10),
                          hintText: "Family Function Attend",
                        ),
                        keyboardType: TextInputType.text,
                        autofocus: false,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20))),
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(00, 50),
                          primary: Color(0xFFec9c24),
                        ),
                        onPressed: () {
                          Adddriverleave(_itemSelected!.id, _itemSelected1!.id,
                              "function leave");
                          // setState(() {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Profile_details()));
                          // }
                          // );
                        },
                        child: Text(
                          "        Save        ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Appcolors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'OpenSans'),
                        ),
                      )),
                ),
              ],
            )
          ]),
    );
  }

  void getdataForleave() async {
    HttpService httpService = HttpService();
    SessionManagement sessionManagement = SessionManagement();
    LoginModel leave = await sessionManagement.getModel("Driver");
    final token = leave.result?.res?.response?.token;
    LeaveType? country = await httpService.getLeavetype(token!);
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {
          _dropdownItems = country!.leaveTypes;
          _itemSelected = _dropdownItems.first;
          _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
          setState(() {});
        }));
  }

  List<DropdownMenuItem<LeaveTypeElement>> buildDropDownMenuItems(
      List listItems) {
    List<DropdownMenuItem<LeaveTypeElement>> items = [];
    for (LeaveTypeElement listItem in listItems) {
      items.add(
        DropdownMenuItem(
          value: listItem,
          child: Text(
            listItem.name,
          ),
        ),
      );
    }
    return items;
  }

  void getdataForshift() async {
    HttpService httpService = HttpService();
    SessionManagement sessionManagement = SessionManagement();
    LoginModel leave = await sessionManagement.getModel("Driver");
    String? token = leave.result?.res?.response?.token;
    ShiftType? country = await httpService.getShiftType(token!);
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {
          _dropdownItems1 = country!.shiftTypes;
          _itemSelected1 = _dropdownItems1.first;
          _dropdownMenuItems1 = buildDropDownMenuItems1(_dropdownItems1);
          setState(() {});
        }));
  }

  List<DropdownMenuItem<ShiftTypeElement>> buildDropDownMenuItems1(
      List listItems) {
    List<DropdownMenuItem<ShiftTypeElement>> items = [];
    for (ShiftTypeElement listItem in listItems) {
      items.add(
        DropdownMenuItem(
          value: listItem,
          child: Text(
            listItem.name,
          ),
        ),
      );
    }
    return items;
  }

  void Adddriverleave(String leavetype, String shifttype, String reson) async {
    print("add member leave");
    HttpService api = HttpService();
    SessionManagement sessionManagement = await SessionManagement();
    LoginModel addleave = await sessionManagement.getModel("Driver");
    String? token = addleave.result?.res?.response?.token;
    print(token);
    AddDriverLeave login = await api.Adddriverleave(
        token!,
        "63d3b8cef66fc79998531b5b",
        "641c01c19dde0ce876fc5b77",
        "641c01c19dde0ce876fc5b77",
        shifttype,
        leavetype,
        "2023-02-15",
        "2023-02-20",
        reson,
        true,
        "",
        ",",
        ",",
        ",",
        "");
    if (login.message == "Ok") {
      print("update data successfully");
      Fluttertoast.showToast(
          msg: "Leave Add successfully", toastLength: Toast.LENGTH_LONG);
    } else {
      Fluttertoast.showToast(
          msg: "Leave not Add", toastLength: Toast.LENGTH_LONG);
    }
  }
}
