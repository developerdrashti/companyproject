import 'package:dropikmed001/Model/AddSos.dart';
import 'package:dropikmed001/Services/Apiclass.dart';
import 'package:dropikmed001/utils/AppImages.dart';
import 'package:flutter/material.dart';
class sosscreen extends StatefulWidget {
  const sosscreen({Key? key}) : super(key: key);

  @override
  State<sosscreen> createState() => _sosscreenState();
}

class _sosscreenState extends State<sosscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(child: Container(
              child: GestureDetector(
                onTap: (){
                  addsos();
                },
                child: Image.asset(Appimages.sosimage),
              )))),);
  }

  void addsos()async {
    HttpService api=HttpService();
    String token="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJvcmdhbml6YXRpb24iOnsiX2lkIjoiNjNjZTVmZjNjM2M3ODhkMjdhOWZmZDMwIiwibmFtZSI6IlRlc3QgdGVzdCIsImNvbnRhY3RObyI6IjExIiwiZW1haWwiOiJkaHJ1dmlrOWEwM0BnbWFpbC5jb20iLCJidXNpbmVzc1R5cGUiOiI2M2I1MTQ1OWVjZmMyOTFiN2E0ZDdmNzgiLCJjb21wYW55TmFtZSI6IiIsImFkZHJlc3MiOiIiLCJwb3N0Q29kZSI6IiIsInBhc3N3b3JkIjoiJDJiJDEwJFA4QmFvbUZ2aFc3UWVDc0dwTXJyVk9zUk40ZUZ3ek1CenBINzlaci5KZG1RZEt4MjFCakM2IiwiaXNWZXJpZmllZCI6ZmFsc2UsImRlc2NyaXB0aW9uIjoiIiwibm90ZSI6ImhlbGxvIiwiZGV0YWlscyI6IiIsImlzQWN0aXZlIjp0cnVlLCJpc0RlbGV0ZWQiOmZhbHNlLCJjcmVhdGVkQXQiOiIyMDIzLTAxLTIzVDEwOjIyOjQzLjg4OFoiLCJ1cGRhdGVkQXQiOiIyMDIzLTAxLTIzVDEwOjIyOjQzLjg4OFoiLCJfX3YiOjAsInJvbGVDb2RlIjoiT1JHIn0sImlhdCI6MTY4MTc5ODU4MiwiZXhwIjoxNjgxODg0OTgyfQ.Y7-6HzzDN4SxPN945fY7gzLE82AzAChkNO0xyRQ7ITU";
    AddSos sos=await api.AddSosdata(token);
    if(sos.message=="Ok"){
      print(sos.message);
    }else{
      print("not add");
    }

  }
}
