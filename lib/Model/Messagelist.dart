// To parse this JSON data, do
//
//     final messagelist = messagelistFromJson(jsonString);

import 'dart:convert';

Messagelist messagelistFromJson(String str) => Messagelist.fromJson(json.decode(str));

String messagelistToJson(Messagelist data) => json.encode(data.toJson());

class Messagelist {
  Messagelist({
    required this.message,
    required this.allDriverMessage,
  });

  String message;
  List<AllDriverMessage> allDriverMessage;

  factory Messagelist.fromJson(Map<String, dynamic> json) => Messagelist(
    message: json["message"],
    allDriverMessage: List<AllDriverMessage>.from(json["AllDriverMessage"].map((x) => AllDriverMessage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "AllDriverMessage": List<dynamic>.from(allDriverMessage.map((x) => x.toJson())),
  };
}

class AllDriverMessage {
  AllDriverMessage({
    required this.id,
    this.organizerId,
    required this.driverId,
    required this.messageType,
    required this.message,
    required this.time,
    required this.createdBy,
    required this.updatedBy,
    required this.isActive,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.result,
    required this.msgType,
  });

  String id;
  String? organizerId;
  String driverId;
  String messageType;
  String message;
  String time;
  String createdBy;
  String updatedBy;
  bool isActive;
  bool isDeleted;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  Result result;
  String msgType;

  factory AllDriverMessage.fromJson(Map<String, dynamic> json) => AllDriverMessage(
    id: json["_id"],
    organizerId: json["organizerId"],
    driverId: json["driverId"],
    messageType: json["messageType"],
    message: json["message"],
    time: json["time"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    isActive: json["isActive"],
    isDeleted: json["isDeleted"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    result: Result.fromJson(json["result"]),
    msgType: json["msgType"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "organizerId": organizerId,
    "driverId": driverId,
    "messageType": messageType,
    "message": message,
    "time": time,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "isActive": isActive,
    "isDeleted": isDeleted,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
    "result": result.toJson(),
    "msgType": msgType,
  };
}

class Result {
  Result({
    required this.id,
    required this.organizerId,
    required this.messageType,
    required this.code,
    required this.details,
    required this.createdBy,
    required this.updatedBy,
    required this.isActive,
    required this.isDeleted,
  });

  String id;
  String organizerId;
  String messageType;
  String code;
  String details;
  String createdBy;
  String updatedBy;
  bool isActive;
  bool isDeleted;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["_id"],
    organizerId: json["organizerId"],
    messageType: json["messageType"],
    code: json["code"],
    details: json["details"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    isActive: json["isActive"],
    isDeleted: json["isDeleted"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "organizerId": organizerId,
    "messageType": messageType,
    "code": code,
    "details": details,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "isActive": isActive,
    "isDeleted": isDeleted,
  };
}
