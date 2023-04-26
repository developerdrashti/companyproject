//
//
// import 'dart:convert';
//
// MembersList membersFromJson(String str) => MembersList.fromJson(json.decode(str));
//
// String membersToJson(MembersList data) => json.encode(data.toJson());
//
// class MembersList {
//   MembersList({
//     required this.message,
//     required this.driverLeave,
//   });
//
//   String message;
//   List<DriverLeavedata> driverLeave;
//
//   factory MembersList.fromJson(Map<String, dynamic> json) => MembersList(
//     message: json["message"],
//     driverLeave: List<DriverLeavedata>.from(json["driverLeave"].map((x) => DriverLeavedata.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "message": message,
//     "driverLeave": List<dynamic>.from(driverLeave.map((x) => x.toJson())),
//   };
// }
//
// class DriverLeavedata {
//   DriverLeavedata({
//     required this.id,
//     required this.organizerId,
//     required this.driverId,
//     required this.shiftTypeId,
//     required this.leaveTypeId,
//     required this.startDate,
//     required this.endDate,
//     required this.reason,
//     required this.isApproved,
//     required this.approvedDate,
//     required this.code,
//     required this.description,
//     required this.note,
//     required this.details,
//     required this.createdBy,
//     required this.updatedBy,
//     required this.isActive,
//     required this.isDeleted,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//   });
//
//   String id;
//   String organizerId;
//   String driverId;
//   ShiftTypeId shiftTypeId;
//   LeaveTypeId leaveTypeId;
//   DateTime startDate;
//   DateTime endDate;
//   String reason;
//   bool isApproved;
//   DateTime approvedDate;
//   String code;
//   String description;
//   String note;
//   String details;
//   String createdBy;
//   String updatedBy;
//   bool isActive;
//   bool isDeleted;
//   DateTime createdAt;
//   DateTime updatedAt;
//   int v;
//
//   factory DriverLeavedata.fromJson(Map<String, dynamic> json) => DriverLeavedata(
//     id: json["_id"],
//     organizerId: json["organizerId"],
//     driverId: json["driverId"],
//     shiftTypeId: ShiftTypeId.fromJson(json["shiftTypeId"]),
//     leaveTypeId: LeaveTypeId.fromJson(json["leaveTypeId"]),
//     startDate: DateTime.parse(json["startDate"]),
//     endDate: DateTime.parse(json["endDate"]),
//     reason: json["reason"],
//     isApproved: json["isApproved"],
//     approvedDate: DateTime.parse(json["approvedDate"]),
//     code: json["code"],
//     description: json["description"],
//     note: json["note"],
//     details: json["details"],
//     createdBy: json["createdBy"],
//     updatedBy: json["updatedBy"],
//     isActive: json["isActive"],
//     isDeleted: json["isDeleted"],
//     createdAt: DateTime.parse(json["createdAt"]),
//     updatedAt: DateTime.parse(json["updatedAt"]),
//     v: json["__v"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "_id": id,
//     "organizerId": organizerId,
//     "driverId": driverId,
//     "shiftTypeId": shiftTypeId.toJson(),
//     "leaveTypeId": leaveTypeId.toJson(),
//     "startDate": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
//     "endDate": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
//     "reason": reason,
//     "isApproved": isApproved,
//     "approvedDate": approvedDate.toIso8601String(),
//     "code": code,
//     "description": description,
//     "note": note,
//     "details": details,
//     "createdBy": createdBy,
//     "updatedBy": updatedBy,
//     "isActive": isActive,
//     "isDeleted": isDeleted,
//     "createdAt": createdAt.toIso8601String(),
//     "updatedAt": updatedAt.toIso8601String(),
//     "__v": v,
//   };
// }
//
// class LeaveTypeId {
//   LeaveTypeId({
//     required this.id,
//     required this.name,
//     required this.code,
//     required this.isActive,
//   });
//
//   String id;
//   String name;
//   String code;
//   bool isActive;
//
//   factory LeaveTypeId.fromJson(Map<String, dynamic> json) => LeaveTypeId(
//     id: json["_id"],
//     name: json["name"],
//     code: json["code"],
//     isActive: json["isActive"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "_id": id,
//     "name": name,
//     "code": code,
//     "isActive": isActive,
//   };
// }
//
// class ShiftTypeId {
//   ShiftTypeId({
//     required this.id,
//     required this.organizerId,
//     required this.name,
//     required this.code,
//     required this.inTime,
//     required this.outTime,
//     required this.description,
//     required this.note,
//     required this.details,
//     required this.createdBy,
//     required this.updatedBy,
//     required this.isActive,
//     required this.isDeleted,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//   });
//
//   String id;
//   String organizerId;
//   String name;
//   String code;
//   String inTime;
//   String outTime;
//   String description;
//   String note;
//   String details;
//   String createdBy;
//   String updatedBy;
//   bool isActive;
//   bool isDeleted;
//   DateTime createdAt;
//   DateTime updatedAt;
//   int v;
//
//   factory ShiftTypeId.fromJson(Map<String, dynamic> json) => ShiftTypeId(
//     id: json["_id"],
//     organizerId: json["organizerId"],
//     name: json["name"],
//     code: json["code"],
//     inTime: json["inTime"],
//     outTime: json["outTime"],
//     description: json["description"],
//     note: json["note"],
//     details: json["details"],
//     createdBy: json["createdBy"],
//     updatedBy: json["updatedBy"],
//     isActive: json["isActive"],
//     isDeleted: json["isDeleted"],
//     createdAt: DateTime.parse(json["createdAt"]),
//     updatedAt: DateTime.parse(json["updatedAt"]),
//     v: json["__v"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "_id": id,
//     "organizerId": organizerId,
//     "name": name,
//     "code": code,
//     "inTime": inTime,
//     "outTime": outTime,
//     "description": description,
//     "note": note,
//     "details": details,
//     "createdBy": createdBy,
//     "updatedBy": updatedBy,
//     "isActive": isActive,
//     "isDeleted": isDeleted,
//     "createdAt": createdAt.toIso8601String(),
//     "updatedAt": updatedAt.toIso8601String(),
//     "__v": v,
//   };
// }

import 'dart:convert';

 MembersList membersFromJson(String str) => MembersList.fromJson(json.decode(str));

 String membersToJson(MembersList data) => json.encode(data.toJson());

class MembersList {
  MembersList({
    required this.message,
    required this.driverLeave,
  });

  String message;
  List<DriverLeavedata> driverLeave;

  factory MembersList.fromJson(Map<String, dynamic> json) => MembersList(
    message: json["message"],
        driverLeave: List<DriverLeavedata>.from(json["driverLeave"].map((x) => DriverLeavedata.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
     "driverLeave": List<dynamic>.from(driverLeave.map((x) => x.toJson())),
  };
}

class DriverLeavedata {
 DriverLeavedata({
    required this.id,
    required this.organizerId,
    required this.driverId,
    required this.shiftTypeId,
    required this.leaveTypeId,
    required this.startDate,
    required this.endDate,
    required this.reason,
    required this.isApproved,
    required this.approvedDate,
    required this.code,
    required this.description,
    required this.note,
    required this.details,
    required this.createdBy,
    required this.updatedBy,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String organizerId;
  String driverId;
  ShiftTypeId shiftTypeId;
  LeaveTypeId leaveTypeId;
  DateTime startDate;
  DateTime endDate;
  String reason;
  bool isApproved;
  String approvedDate;
  String code;
  String description;
  String note;
  String details;
  String createdBy;
  String updatedBy;
  bool isActive;
  bool isDeleted;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

    factory DriverLeavedata.fromJson(Map<String, dynamic> json) => DriverLeavedata(
    id: json["_id"],
    organizerId: json["organizerId"],
    driverId: json["driverId"],
    shiftTypeId: ShiftTypeId.fromJson(json["shiftTypeId"]),
    leaveTypeId: LeaveTypeId.fromJson(json["leaveTypeId"]),
    startDate: DateTime.parse(json["startDate"]),
    endDate: DateTime.parse(json["endDate"]),
    reason: json["reason"],
    isApproved: json["isApproved"],
    approvedDate: json["approvedDate"],
    code: json["code"],
    description: json["description"],
    note: json["note"],
    details: json["details"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    isActive: json["isActive"],
    isDeleted: json["isDeleted"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "organizerId": organizerId,
    "driverId": driverId,
    "shiftTypeId": shiftTypeId.toJson(),
    "leaveTypeId": leaveTypeId.toJson(),
    "startDate": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
    "endDate": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
    "reason": reason,
    "isApproved": isApproved,
    "approvedDate": approvedDate,
    "code": code,
    "description": description,
    "note": note,
    "details": details,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "isActive": isActive,
    "isDeleted": isDeleted,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}

class LeaveTypeId {
  LeaveTypeId({
    required this.id,
    required this.name,
    required this.code,
    required this.isActive,
  });

  String id;
  String name;
  String code;
  bool isActive;

  factory LeaveTypeId.fromJson(Map<String, dynamic> json) => LeaveTypeId(
    id: json["_id"],
    name: json["name"],
    code: json["code"],
    isActive: json["isActive"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "code": code,
    "isActive": isActive,
  };
}

class ShiftTypeId {
  ShiftTypeId({
    required this.id,
    required this.organizerId,
    required this.name,
    required this.code,
    required this.inTime,
    required this.outTime,
    required this.description,
    required this.note,
    required this.details,
    required this.createdBy,
    required this.updatedBy,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String organizerId;
  String name;
  String code;
  String inTime;
  String outTime;
  String description;
  String note;
  String details;
  String createdBy;
  String updatedBy;
  bool isActive;
  bool isDeleted;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory ShiftTypeId.fromJson(Map<String, dynamic> json) => ShiftTypeId(
    id: json["_id"],
    organizerId: json["organizerId"],
    name: json["name"],
    code: json["code"],
    inTime: json["inTime"],
    outTime: json["outTime"],
    description: json["description"],
    note: json["note"],
    details: json["details"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    isActive: json["isActive"],
    isDeleted: json["isDeleted"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "organizerId": organizerId,
    "name": name,
    "code": code,
    "inTime": inTime,
    "outTime": outTime,
    "description": description,
    "note": note,
    "details": details,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "isActive": isActive,
    "isDeleted": isDeleted,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
