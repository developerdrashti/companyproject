// To parse this JSON data, do
//
//     final addDriverLeave = addDriverLeaveFromJson(jsonString);

import 'dart:convert';

AddDriverLeave addDriverLeaveFromJson(String str) => AddDriverLeave.fromJson(json.decode(str));

String addDriverLeaveToJson(AddDriverLeave data) => json.encode(data.toJson());

class AddDriverLeave {
  AddDriverLeave({
    required this.message,
  });

  String message;

  factory AddDriverLeave.fromJson(Map<String, dynamic> json) => AddDriverLeave(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}
