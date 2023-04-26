import 'dart:convert';

import 'package:dropikmed001/Model/AddDriverLeave.dart';
import 'package:dropikmed001/Model/AddSos.dart';
import 'package:dropikmed001/Model/Leavetype.dart';
import 'package:dropikmed001/Model/Messagelist.dart';
import 'package:dropikmed001/Model/Profile.dart';
import 'package:dropikmed001/Model/leave.dart';
import 'package:dropikmed001/Model/login_model.dart';

import 'package:dropikmed001/Model/memeberlist.dart';
import 'package:dropikmed001/Model/shifttype.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpService {
  String BASEURL = "http://54.252.243.135:8080/api/Mobile/";
  String login = "driverLogin";
  String Driverleave = "getDriverLeave/";
  String leavetype = "http://54.252.243.135:8080/api/master/getLeaveType";
  String shifttype = "http://54.252.243.135:8080/api/dropDown/getShiftType";
  String sos =
      "http://54.252.243.135:8080/api/mobile/addSosReq/642fe794b21492172d166092";
  String driverleave = "addDriverLeave/";
  String profile = "getMemberProfileDetails/";
  String message = "getAllDriverMessage/";

  Future<LoginModel> checkLogin(String username) async {
    final http.Response response = await http.post(
      Uri.parse('$BASEURL$login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'username': username.toString(),
        // 'deviceId' : deviceid,
        // 'deviceDetails': devicedetail,
        // 'isFromMobile':isfrommobile.toString(),
      }),
    );
    print("data success${response.body}");

    if (response.statusCode == 200) {
      return LoginModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }
  }

  Future<DriverLeaveList>? getdatadriver(String token, String driverid) async {
    final res = await get(Uri.parse('$BASEURL$Driverleave$driverid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': "$token",
        });
    if (res.statusCode == 200) {
      return DriverLeaveList.fromJson(json.decode(res.body));
    } else {
      throw "message";
    }
  }

  Future<MembersList>? getmember(String token, String driverid) async {
    final res = await get(Uri.parse('$BASEURL$Driverleave$driverid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': "$token",
        });
    if (res.statusCode == 200) {
      print(res.statusCode);
      print(res.body);
      return MembersList.fromJson(json.decode(res.body));
    } else {
      throw "message";
    }
  }

  Future<LeaveType>? getLeavetype(
    String token,
  ) async {
    final res = await get(
        Uri.parse("http://54.252.243.135:8080/api/master/getLeaveType"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': "$token",
        });
    if (res.statusCode == 200) {
      print(res.statusCode);
      print(res.body);
      return LeaveType.fromJson(json.decode(res.body));
    } else {
      throw "message";
    }
  }

  Future<ShiftType>? getShiftType(
    String token,
  ) async {
    final res = await get(
        Uri.parse("http://54.252.243.135:8080/api/dropDown/getShiftType"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': "$token",
        });
    if (res.statusCode == 200) {
      print(res.statusCode);
      print(res.body);
      return ShiftType.fromJson(json.decode(res.body));
    } else {
      throw "message";
    }
  }

  Future<AddDriverLeave> Adddriverleave(
      String token,
      String driverid,
      String createby,
      String updatedby,
      String shifttypeid,
      String leavetypeid,
      String startdate,
      String enddate,
      String reason,
      bool isapproved,
      String approveddate,
      String code,
      String description,
      String note,
      String details) async {
    try {
      final http.Response response = await http.post(
        Uri.parse('$BASEURL$driverleave'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Authorization": "$token"
        },
        body: jsonEncode(<String, String>{
          "createdBy": createby,
          "updatedBy": updatedby,
          "driverId": driverid,
          "shiftTypeId": shifttypeid,
          "leaveTypeId": leavetypeid,
          "startDate": startdate,
          "endDate": enddate,
          "reason": reason,
          "isApproved": isapproved.toString(),
          "approvedDate": approveddate,
          "code": code,
          "description": description,
          "note": note,
          "details": details,
        }),
      );
      print("$BASEURL$driverleave");
      if (response.statusCode == 200) {
        return AddDriverLeave.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to create album.');
      }
    } catch (_) {
      throw 'message';
    }
  }

  Future<AddSos> AddSosdata(String token) async {
    try {
      final http.Response response = await http.post(
        Uri.parse('$sos'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': "$token",
        },
        body: jsonEncode(<String, String>{}),
      );
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        return AddSos.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to create album.');
      }
    } catch (_) {
      throw 'message';
    }
  }

  Future<Profile>? getprofiledata(String token, String driverid) async {
    final res = await get(Uri.parse('$BASEURL$profile$driverid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': "$token",
        });
    if (res.statusCode == 200) {
      return Profile.fromJson(json.decode(res.body));
    } else {
      throw "message";
    }
  }

  Future<Messagelist>? getmessage(String token, String driverid) async {
    final res = await get(Uri.parse('$BASEURL$message$driverid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': "$token",
        });
    if (res.statusCode == 200) {
      return Messagelist.fromJson(json.decode(res.body));
    } else {
      throw "message";
    }
  }
}
