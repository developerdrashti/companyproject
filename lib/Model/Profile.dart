// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  Profile({
    required this.message,
    required this.driverOneMemberDetails,
  });

  String message;
  List<DriverOneMemberDetail> driverOneMemberDetails;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    message: json["message"],
    driverOneMemberDetails: List<DriverOneMemberDetail>.from(json["DriverOneMemberDetails"].map((x) => DriverOneMemberDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "DriverOneMemberDetails": List<dynamic>.from(driverOneMemberDetails.map((x) => x.toJson())),
  };
}

class DriverOneMemberDetail {
  DriverOneMemberDetail({
    required this.id,
    required this.memberShiftName,
    required this.memberPhoto,
    required this.memberName,
    required this.memberPhoneNo,
    required this.memberAddress,
    required this.memberEmail,
    required this.memberDepartmentName,
  });

  String id;
  String memberShiftName;
  String memberPhoto;
  String memberName;
  String memberPhoneNo;
  String memberAddress;
  String memberEmail;
  String memberDepartmentName;

  factory DriverOneMemberDetail.fromJson(Map<String, dynamic> json) => DriverOneMemberDetail(
    id: json["_id"],
    memberShiftName: json["memberShiftName"],
    memberPhoto: json["memberPhoto"],
    memberName: json["memberName"],
    memberPhoneNo: json["memberPhoneNo"],
    memberAddress: json["memberAddress"],
    memberEmail: json["memberEmail"],
    memberDepartmentName: json["memberDepartmentName"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "memberShiftName": memberShiftName,
    "memberPhoto": memberPhoto,
    "memberName": memberName,
    "memberPhoneNo": memberPhoneNo,
    "memberAddress": memberAddress,
    "memberEmail": memberEmail,
    "memberDepartmentName": memberDepartmentName,
  };
}
