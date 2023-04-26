// import 'package:dropikmed001/utils/AppColors.dart';
// import 'package:dropikmed001/utils/AppImages.dart';
// import 'package:flutter/material.dart';
//
// class Profile_details extends StatefulWidget {
//   const Profile_details({Key? key}) : super(key: key);
//
//   @override
//   State<Profile_details> createState() => _Profile_detailsState();
// }
//
// class _Profile_detailsState extends State<Profile_details> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Appcolors.primary,
//         title: Text(
//           "Profile Details",
//           style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'OpenSana'),
//         ),
//       ),
//       body: Stack(children: [
//         Column(
//           children: [
//             Expanded(
//                 child: Container(
//                   color: Appcolors.primary,
//                 )),
//             Expanded(
//                 child: Container(
//                   color: Appcolors.white,
//                 ))
//           ],
//         ),
//         SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   SingleChildScrollView(
//                     physics: BouncingScrollPhysics(),
//                     child: Stack(
//                       alignment: Alignment.topCenter,
//                       children: [
//                         Container(
//                             margin: EdgeInsets.only(bottom: 80),
//                             child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Appcolors.white,
//                                     borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
//                                 margin: EdgeInsets.only(top: 100,bottom: 10),
//                                 child: Container(
//                                   margin: EdgeInsets.only(top: 100),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(padding: EdgeInsets.only(right: 40,left: 10),child: Text(
//                                         " Name",
//                                         style: TextStyle(
//                                             fontFamily: 'OpenSans', fontSize: 16),
//                                       ),),
//                                       Container(
//                                         margin: EdgeInsets.all(10),
//                                         height: 60,
//
//                                         decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(10),
//                                             border: Border.all(color: Colors.black),
//                                             color: Colors.grey.withOpacity(0.05)),
//                                         //margin: EdgeInsets.only(top: 450, right: 25, left: 25),
//                                         child: TextField(
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             contentPadding:
//                                             EdgeInsets.only(top: 10),
//                                             hintText: " John Deo",
//                                           ),
//                                           keyboardType: TextInputType.phone,
//                                           autofocus: false,
//                                         ),
//                                       ),
//                                       Padding(padding: EdgeInsets.only(right: 40,left: 10),child:       Text(
//                                         " Mobile Number",
//                                         style: TextStyle(
//                                             fontFamily: 'OpenSans', fontSize: 16),
//                                       ),),
//                                       Container(
//                                         margin: EdgeInsets.all(10),
//                                         height: 60,
//
//                                         decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(10),
//                                             border: Border.all(color: Colors.black),
//                                             color: Colors.grey.withOpacity(0.05)),
//                                         //margin: EdgeInsets.only(top: 450, right: 25, left: 25),
//                                         child: TextField(
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             contentPadding:
//                                             EdgeInsets.only(top: 10),
//                                             hintText: " +911234567890",
//                                           ),
//                                           keyboardType: TextInputType.phone,
//                                           autofocus: false,
//                                         ),
//                                       ),
//                                       Padding(padding: EdgeInsets.only(right: 40,left: 10),child: Text(
//                                         " E-Mail",
//                                         style: TextStyle(
//                                             fontFamily: 'OpenSans', fontSize: 16),
//                                       ),),
//                                       Container(
//                                         margin: EdgeInsets.all(10),
//                                         height: 60,
//                                         decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(10),
//                                             border: Border.all(color: Colors.black),
//                                             color: Colors.grey.withOpacity(0.05)),
//                                         child: TextField(
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             contentPadding:
//                                             EdgeInsets.only(top: 10),
//                                             hintText: " JohnDeo@gmail.com",
//                                           ),
//                                           keyboardType: TextInputType.text,
//                                           autofocus: false,
//                                         ),
//                                       ),
//                                       Padding(padding: EdgeInsets.only(right: 40,left: 10),child: Text(
//                                         "Address",
//                                         style: TextStyle(
//                                             fontFamily: 'OpenSans', fontSize: 16),
//                                       ),),
//                                       Container(
//                                         margin: EdgeInsets.all(10),
//                                         height: 100,
//
//                                         decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(10),
//                                             border: Border.all(color: Colors.black),
//                                             color: Colors.grey.withOpacity(0.05)),
//                                         //margin: EdgeInsets.only(top: 450, right: 25, left: 25),
//                                         child: TextField(
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             contentPadding:
//                                             EdgeInsets.only(top: 10),
//                                             hintText:
//                                             " D/4,Seventh Star Apartment,Near  Nutan Girls  School,K.K.Nagar,  Ghaltlodiya,  Ahemdabad-380061",
//                                           ),
//                                           keyboardType: TextInputType.text,
//                                           autofocus: false,
//                                           maxLines: 20,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ))),
//                         Container(
//                           margin: const EdgeInsets.only(left: 0,top: 20),
//                           height: 180,
//                           width: 180,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                                 color: Appcolors.primary,
//                                 width: 3.0,
//                                 style: BorderStyle.solid),
//                             borderRadius:
//                             const BorderRadius.all(Radius.circular(160)),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Appcolors.primary.withOpacity(0.5),
//                                 spreadRadius: 0,
//                                 blurRadius: 25,
//                                 offset: const Offset(
//                                     0, 0), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: CircleAvatar(
//                             backgroundColor: Colors.white,
//                             radius: 16.0,
//                             child: ClipRRect(
//                               child: Image.asset(
//                                 Appimages.bus,
//                                 height: 200,
//                                 width: 200,
//                               ),
//                               borderRadius: BorderRadius.circular(30.0),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//               margin: EdgeInsets.only(left: 20,right: 20),
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
//                   setState(() {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Profile_details()));
//                   });
//
//                 },
//                 child: Text(
//                   "        Update        ",
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Appcolors.white,
//                       fontWeight: FontWeight.w600,
//                       fontFamily: 'OpenSans'),
//                 ),
//               )),
//         ),
//
//       ]),
//     );
//   }
// }
import 'package:dropikmed001/Model/Profile.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Services/Apiclass.dart';
import 'package:dropikmed001/Services/sessionmanagement.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:dropikmed001/utils/AppImages.dart';
import 'package:flutter/material.dart';

class Profile_details extends StatefulWidget {
  List<DriverOneMemberDetail> detail=[];
   Profile_details(this.detail);

  @override
  State<Profile_details> createState() => _Profile_detailsState();
}

class _Profile_detailsState extends State<Profile_details> {

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.primary,
        title: Text(
          "Profile Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'OpenSana'),
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            Expanded(
                child: Container(
                  color: Appcolors.primary,
                )),
            Expanded(
                child: Container(
                  color: Appcolors.white,
                ))
          ],
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 80),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Appcolors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20))),
                                margin: EdgeInsets.only(top: 100, bottom: 10),
                                child: Container(
                                  margin: EdgeInsets.only(top: 100),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Padding(padding: EdgeInsets.only(
                                          right: 40, left: 10), child: Text(
                                        " Name",
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontSize: 16),
                                      ),),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        height: 60,

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                            border: Border.all(
                                                color: Colors.black),
                                            color: Colors.grey.withOpacity(
                                                0.05)),
                                        //margin: EdgeInsets.only(top: 450, right: 25, left: 25),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                            EdgeInsets.only(top: 10),
                                            hintText: widget.detail[0]
                                                .memberName,
                                          ),
                                          keyboardType: TextInputType.phone,
                                          autofocus: false,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(
                                          right: 40, left: 10), child: Text(
                                        " Mobile Number",
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontSize: 16),
                                      ),),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        height: 60,

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                            border: Border.all(
                                                color: Colors.black),
                                            color: Colors.grey.withOpacity(
                                                0.05)),
                                        //margin: EdgeInsets.only(top: 450, right: 25, left: 25),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                            EdgeInsets.only(top: 10),
                                            hintText: widget.detail[0].memberPhoneNo,
                                          ),
                                          keyboardType: TextInputType.phone,
                                          autofocus: false,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(
                                          right: 40, left: 10), child: Text(
                                        " E-Mail",
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontSize: 16),
                                      ),),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        height: 60,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                            border: Border.all(
                                                color: Colors.black),
                                            color: Colors.grey.withOpacity(
                                                0.05)),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                            EdgeInsets.only(top: 10),
                                            hintText: widget.detail[0].memberEmail,
                                          ),
                                          keyboardType: TextInputType.text,
                                          autofocus: false,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(
                                          right: 40, left: 10), child: Text(
                                        "Address",
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontSize: 16),
                                      ),),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        height: 100,

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                            border: Border.all(
                                                color: Colors.black),
                                            color: Colors.grey.withOpacity(
                                                0.05)),
                                        //margin: EdgeInsets.only(top: 450, right: 25, left: 25),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                            EdgeInsets.only(top: 10),
                                            hintText:
                                            widget.detail[0].memberAddress,
                                          ),
                                          keyboardType: TextInputType.text,
                                          autofocus: false,
                                          maxLines: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ))),
                        Container(
                          margin: const EdgeInsets.only(left: 0, top: 20),
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Appcolors.primary,
                                width: 3.0,
                                style: BorderStyle.solid),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(160)),
                            boxShadow: [
                              BoxShadow(
                                color: Appcolors.primary.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 25,
                                offset: const Offset(
                                    0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 16.0,
                            child: ClipRRect(
                              child: Image.asset(
                                Appimages.bus,
                                height: 200,
                                width: 200,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(20))),
              height: 50,

              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(00, 50),
                  primary: Color(0xFFec9c24),
                ),
                onPressed: () {
                  // setState(() {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => Profile_details()));
                  // });
                },
                child: Text(
                  "        Update        ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Appcolors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans'),
                ),
              )),
        ),

      ]),
    );
  }
}