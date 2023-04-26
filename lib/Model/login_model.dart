
class LoginModel {
    String? message;
    bool? isSuccess;
    int? statusCode;
    Result? result;

    LoginModel({this.message, this.isSuccess, this.statusCode, this.result});

    LoginModel.fromJson(Map<String, dynamic> json) {
        message = json["message"];
        isSuccess = json["isSuccess"];
        statusCode = json["statusCode"];
        result = json["result"] == null ? null : Result.fromJson(json["result"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["message"] = message;
        _data["isSuccess"] = isSuccess;
        _data["statusCode"] = statusCode;
        if(result != null) {
            _data["result"] = result?.toJson();
        }
        return _data;
    }
}

class Result {
    Res? res;

    Result({this.res});

    Result.fromJson(Map<String, dynamic> json) {
        res = json["res"] == null ? null : Res.fromJson(json["res"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(res != null) {
            _data["res"] = res?.toJson();
        }
        return _data;
    }
}

class Res {
    Response? response;
    bool? paymentCheck;
    bool? rfidCardCheck;
    bool? isMultiShift;

    Res({this.response, this.paymentCheck, this.rfidCardCheck, this.isMultiShift});

    Res.fromJson(Map<String, dynamic> json) {
        response = json["response"] == null ? null : Response.fromJson(json["response"]);
        paymentCheck = json["paymentCheck"];
        rfidCardCheck = json["rfidCardCheck"];
        isMultiShift = json["isMultiShift"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(response != null) {
            _data["response"] = response?.toJson();
        }
        _data["paymentCheck"] = paymentCheck;
        _data["rfidCardCheck"] = rfidCardCheck;
        _data["isMultiShift"] = isMultiShift;
        return _data;
    }
}

class Response {
    String? organizerId;
    String? driverId;
    String? driverName;
    String? profilePhoto;
    String? contactNo;
    String? token;
    bool? isActive;
    bool? isDeleted;
    String? id;
    String? createdAt;
    String? updatedAt;
    int? v;

    Response({this.organizerId, this.driverId, this.driverName, this.profilePhoto, this.contactNo, this.token, this.isActive, this.isDeleted, this.id, this.createdAt, this.updatedAt, this.v});

    Response.fromJson(Map<String, dynamic> json) {
        organizerId = json["organizerId"];
        driverId = json["driverId"];
        driverName = json["driverName"];
        profilePhoto = json["profilePhoto"];
        contactNo = json["contactNo"];
        token = json["token"];
        isActive = json["isActive"];
        isDeleted = json["isDeleted"];
        id = json["_id"];
        createdAt = json["createdAt"];
        updatedAt = json["updatedAt"];
        v = json["__v"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["organizerId"] = organizerId;
        _data["driverId"] = driverId;
        _data["driverName"] = driverName;
        _data["profilePhoto"] = profilePhoto;
        _data["contactNo"] = contactNo;
        _data["token"] = token;
        _data["isActive"] = isActive;
        _data["isDeleted"] = isDeleted;
        _data["_id"] = id;
        _data["createdAt"] = createdAt;
        _data["updatedAt"] = updatedAt;
        _data["__v"] = v;
        return _data;
    }
}