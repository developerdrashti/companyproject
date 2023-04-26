// import 'package:dotted_line/dotted_line.dart';
//
// import 'package:dropikmed001/utils/AppColors.dart';
// import 'package:flutter/material.dart';
//
//
//
// class complain extends StatefulWidget {
//   const complain({Key? key}) : super(key: key);
//
//   @override
//   State<complain> createState() => _complainState();
// }
//
// class _complainState extends State<complain> {
//   var _name = 'Sir, I Want to draw you Kind attention t';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//         floatingActionButton: FloatingActionButton(
//           // isExtended: true,
//           child: Icon(Icons.add),
//           backgroundColor: Appcolors.primary,
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>Complain_detail()));
//
//           },
//         ),
//         appBar: AppBar(
//           backgroundColor: Appcolors.primary,
//           title: Text(
//             "Complain",
//             style:
//             TextStyle(fontWeight: FontWeight.bold, fontFamily: 'OpenSana'),
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height - 20,
//                 child: ListView.builder(
//                     physics: const NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemCount: 20,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: EdgeInsets.all(10),
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromARGB(255, 204, 204, 204),
//                               offset: const Offset(
//                                 0.0,
//                                 5.0,
//                               ),
//                               blurRadius: 5.0,
//                               spreadRadius: 0.5,
//                             ),
//                           ],
//                           color: Appcolors.white,
//                           borderRadius: BorderRadius.circular(25),
//                         ),
//                         child: Column(
//                           children: [
//                             Container(
//                               child: Text(
//                                 _name.length > 10
//                                     ? _name.substring(0, 40) + '...'
//                                     : _name,
//                                 style: TextStyle(
//                                     color: Appcolors.black,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w500,
//                                     fontFamily: 'OpenSans'),
//                               ),
//                             ),
//                             Container(
//                               //height of container
//                                 child: DottedLine(
//                                   direction: Axis.horizontal,
//                                   lineLength: double.infinity,
//                                   lineThickness: 1.0,
//                                   dashLength: 4.0,
//                                   dashColor: Color.fromARGB(255, 145, 145, 145),
//                                   dashRadius: 0.0,
//                                   dashGapLength: 4.0,
//                                   dashGapColor: Colors.transparent,
//                                   dashGapRadius: 0.0,
//                                 )),
//                             Padding(
//                               padding:
//                               const EdgeInsets.only(top: 10, right: 240),
//                               child: Container(
//                                 child: Text(
//                                   "3 jan 2023",
//                                   style:
//                                   TextStyle(fontWeight: FontWeight.normal),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child: Container(
//
//
//                                   child: DottedLine(
//
//                                     direction: Axis.horizontal,
//                                     lineLength: double.infinity,
//                                     lineThickness: 1.0,
//                                     dashLength: 4.0,
//                                     dashColor: Color.fromARGB(255, 145, 145, 145),
//                                     dashRadius: 0.0,
//                                     dashGapLength: 4.0,
//                                     dashGapColor: Colors.transparent,
//                                     dashGapRadius: 0.0,
//                                   )),
//                             ),
//                             Container(
//                               padding: EdgeInsets.only(top: 5, left: 200),
//                               width: double.maxFinite,
//                               alignment: Alignment.center,
//                               // margin: EdgeInsets.only(top: 590, right: 40, left: 40),
//                               child: ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     minimumSize: Size(00, 30),
//                                     primary: Color(0xFFFFFFFF),
//                                   ),
//                                   onPressed: () {
//                                     // setState(() {
//                                     //   Navigator.push(
//                                     //       context,
//                                     //       MaterialPageRoute(
//                                     //           builder: (context) =>
//                                     //               password_confirm_screen()));
//                                     // });
//                                   },
//                                   child: Text(
//                                     "Status",
//                                     style: TextStyle(
//                                         fontSize: 15, color: Appcolors.primary),
//                                   )),
//                             )
//                           ],
//                         ),
//                       );
//                     }),
//               ),
//             ],
//           ),
//         ));
//   }
// }
//
// class Complain_detail extends StatefulWidget {
//   const Complain_detail({Key? key}) : super(key: key);
//
//   @override
//   State<Complain_detail> createState() => _Complain_detailState();
// }
//
// class _Complain_detailState extends State<Complain_detail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(
//       backgroundColor: Appcolors.primary,
//       title: Text("Complain ",style: TextStyle(
//           fontFamily: "OpenSans",
//           color: Colors.white,
//           fontSize: 20
//       ),),
//       leading: GestureDetector(
//         onTap: (){
//           Navigator.pop(context);
//         },
//         child: Icon(Icons.arrow_back),
//       ),
//       actions: [
//         GestureDetector(
//             onTap: (){
//               // showAlertDialog(context);
//             },
//             child: Padding(
//               padding: EdgeInsets.all(20),
//               child: Icon(Icons.notifications_none),
//             )
//         )
//       ],
//     ),
//       body: Column(children: [Container(
//         padding: EdgeInsets.only(top: 30,right: 220),
//         child: Text("Complain",style: TextStyle(color: Appcolors.black,fontWeight: FontWeight.w600,fontFamily: 'OpenSans',fontSize:20),
//         ),
//       ),
//         Container(
//           height: 200,
//           margin: EdgeInsets.all(15),
//
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.withOpacity(0.05),
//             border: Border.all(color: Appcolors.black),
//           ),
//
//           child: TextField(
//             decoration: InputDecoration(
//
//               border:InputBorder.none,
//               contentPadding: EdgeInsets.only(top: 10),
//
//               hintText: " Enter  Your    Complain",),
//             keyboardType: TextInputType.text,
//             autofocus: false,
//           ),
//         ),
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//               margin: EdgeInsets.only(top: 200,left: 20,right: 20),
//               decoration: BoxDecoration(
//                   borderRadius:
//                   BorderRadius.only(bottomLeft: Radius.circular(20))),
//               height: 50,
//
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: Size(00, 50),
//                   primary: Color(0xFFec9c24),
//                 ),
//                 onPressed: () {
//                   // setState(() {
//                   //   Navigator.push(
//                   //       context,
//                   //       MaterialPageRoute(
//                   //           builder: (context) => Profile_details()));
//                   // }
//                   // );
//
//                 },
//                 child: Text(
//                   "      Send      ",
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Appcolors.white,
//                       fontWeight: FontWeight.w600,
//                       fontFamily: 'OpenSans'),
//                 ),
//               )),
//         ),
//
//       ],
//       ),
//     );
//   }
// }
import 'package:dotted_line/dotted_line.dart';
import 'package:dropikmed001/Model/Messagelist.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Model/login_model.dart';
import 'package:dropikmed001/Services/Apiclass.dart';
import 'package:dropikmed001/Services/sessionmanagement.dart';
import 'package:dropikmed001/screens/Message_detail.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:flutter/material.dart';

class Message_screen extends StatefulWidget {
  const Message_screen({Key? key}) : super(key: key);

  @override
  State<Message_screen> createState() => _Message_screenState();
}

class _Message_screenState extends State<Message_screen> {
  List<AllDriverMessage> message_list = [];
  @override
  void initState() {
    super.initState();
    Apicall();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Appcolors.primary,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Messsage_detail()));
        },
      ),
      appBar: AppBar(
        backgroundColor: Appcolors.primary,
        title: Text(
          "Message",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'OpenSana'),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            message_list.isEmpty ? 2 : message_list.length,
                        itemBuilder: (context, index) {
                          return Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 204, 204, 204),
                                    offset: const Offset(
                                      0.0,
                                      5.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: 0.5,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15, left: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          message_list.isEmpty
                                              ? "Break down"
                                              : message_list[index].msgType,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: DottedLine(
                                      direction: Axis.horizontal,
                                      lineLength: double.infinity,
                                      lineThickness: 1.0,
                                      dashLength: 4.0,
                                      dashColor:
                                          Color.fromARGB(255, 170, 170, 170),
                                      dashRadius: 0.0,
                                      dashGapLength: 4.0,
                                      dashGapColor: Colors.transparent,
                                      dashGapRadius: 0.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 50, top: 16),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse,
                                          size: 25,
                                          color: Appcolors.darkblack,
                                        ),
                                        Text(
                                          message_list.isEmpty
                                              ? "11:20"
                                              : message_list[index].time,
                                          style: TextStyle(
                                              color: Appcolors.darkblack,
                                              fontFamily: 'OpenSans'),
                                        ),
                                        Text(
                                            message_list.isEmpty
                                                ? "12:30"
                                                : message_list[index].time,
                                            style: TextStyle(
                                                color: Appcolors.darkblack,
                                                fontFamily: 'OpenSans')),
                                        Text(
                                            message_list.isEmpty
                                                ? " 4 hours"
                                                : message_list[index].msgType,
                                            style: TextStyle(
                                                color: Appcolors.darkblack,
                                                fontFamily: 'OpenSans')),
                                      ],
                                    ),
                                  ),
                                ],
                              ));
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }

  void Apicall() async {
    print("get member data");
    HttpService api = HttpService();
    SessionManagement sessionManagement = SessionManagement();
    LoginModel login = await sessionManagement.getModel("Driver");
    print("${login.result?.res?.response?.token}");
    String? token = login.result?.res?.response?.token;
    String driverid = "63d3c385299f832bb7042045";
    dynamic response = await api.getmessage(token!, driverid);
    Messagelist leave = response;
    if (leave.message == "Ok") {
      print(leave.message);
      setState(() {
        message_list = leave.allDriverMessage;
      });
    } else {
      print("data not retrive");
    }
  }
}
