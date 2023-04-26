// // To parse this JSON data, do
// //
// //     final login = loginFromJson(jsonString);

// import 'dart:convert';

// Login loginFromJson(String str) => Login.fromJson(json.decode(str));

// String loginToJson(Login data) => json.encode(data.toJson());

// class Login {
//   Login({
//     required this.message,
//     required this.res,
//   });

//   String message;
//   Res res;

//   factory Login.fromJson(Map<String, dynamic> json) => Login(
//         message: json["message"],
//         res: Res.fromJson(json["res"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "message": message,
//         "res": res.toJson(),
//       };
// }

// class Res {
//   Res({
//     required this.organizerId,
//     required this.contactNo,
//     required this.otp,
//     required this.token,
//     required this.id,
//     required this.genDate,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//   });

//   String organizerId;
//   String contactNo;
//   String otp;
//   String token;
//   String id;
//   DateTime genDate;
//   DateTime createdAt;
//   DateTime updatedAt;
//   int v;

//   factory Res.fromJson(Map<String, dynamic> json) => Res(
//         organizerId: json["organizerId"],
//         contactNo: json["contactNo"],
//         otp: json["otp"],
//         token: json["token"],
//         id: json["_id"],
//         genDate: DateTime.parse(json["genDate"]),
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         v: json["__v"],
//       );

//   Map<String, dynamic> toJson() => {
//         "organizerId": organizerId,
//         "contactNo": contactNo,
//         "otp": otp,
//         "token": token,
//         "_id": id,
//         "genDate": genDate.toIso8601String(),
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "__v": v,
//       };
// }
// // class Login {
// //   Login({
// //     required this.message,
// //     required this.isSuccess,
// //     required this.statusCode,
// //     required this.result,
// //   });
// //
// //   String message;
// //   bool isSuccess;
// //   int statusCode;
// //   Result result;
// // }
// //
// // class Result {
// //   Result({
// //     required this.res,
// //   });
// //
// //   Res res;
// // }
// //
// // class Res {
// //   Res({
// //     required this.response,
// //     required this.paymentCheck,
// //     required this.rfidCardCheck,
// //     required this.isMultiShift,
// //   });
// //
// //   Response response;
// //   bool paymentCheck;
// //   bool rfidCardCheck;
// //   bool isMultiShift;
// // }
// //
// // class Response {
// //   Response({
// //     required this.organizerId,
// //     required this.driverId,
// //     required this.driverName,
// //     required this.profilePhoto,
// //     required this.contactNo,
// //     required this.token,
// //     required this.isActive,
// //     required this.isDeleted,
// //     required this.id,
// //     required this.createdAt,
// //     required this.updatedAt,
// //     required this.v,
// //   });
// //
// //   String organizerId;
// //   String driverId;
// //   String driverName;
// //   String profilePhoto;
// //   String contactNo;
// //   String token;
// //   bool isActive;
// //   bool isDeleted;
// //   String id;
// //   DateTime createdAt;
// //   DateTime updatedAt;
// //   int v;
// // }
