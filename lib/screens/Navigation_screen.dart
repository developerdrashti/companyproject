
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Services/sessionmanagement.dart';
import 'package:dropikmed001/screens/Change_Vehical.dart';
import 'package:dropikmed001/screens/Dashboard_screen.dart';
import 'package:dropikmed001/screens/Leave.dart';
import 'package:dropikmed001/screens/Login_screen.dart';
import 'package:dropikmed001/screens/Member.dart';
import 'package:dropikmed001/screens/Payment_screen.dart';
import 'package:dropikmed001/screens/Profile.dart';
import 'package:dropikmed001/screens/Message.dart';

import 'package:dropikmed001/screens/sosscreen.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:dropikmed001/utils/AppImages.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class NavigationScreen extends StatefulWidget{

  State<NavigationScreen> createState() => Navigation();
}

class Navigation extends State<NavigationScreen>{
  int _selectedIndex = 0;
  String drivernumber="11111111111";
  String drivername="";
  String profile=Appimages.bus;

  List<Widget> _widgetOptions = <Widget>[
    Dashboard_screen(),
    LeaveScreen(),
   paymentscreen(),
    sosscreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

  }

  Widget build(BuildContext context) {
    return Scaffold(


        body: _widgetOptions.elementAt(_selectedIndex),

        bottomNavigationBar: BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Image.asset(Appimages.home,height:20,width:20,color: Appcolors.black,),
                  label: '',
                  activeIcon: Image.asset(Appimages.home,height:20,width:20,color: Appcolors.primary,)

              ),
              BottomNavigationBarItem(
                  icon: Image.asset(Appimages.leave,height:20,width:20,color: Appcolors.black,),
                  label: '',
                  activeIcon: Image.asset(Appimages.leave,height:20,width:20,color: Appcolors.primary,)

              ),
              BottomNavigationBarItem(
                  icon: Image.asset(Appimages.payment,height:20,width:20,color: Appcolors.black,),
                  label: '',
                  activeIcon: Image.asset(Appimages.payment,height:20,width:20,color: Appcolors.primary,)

              ),
              BottomNavigationBarItem(
                  icon: Image.asset(Appimages.sos,height:20,width:20,color: Appcolors.black,),
                  label: '',
                  activeIcon: Image.asset(Appimages.sos,height:20,width:20,color: Appcolors.primary,)

              ),

            ],
            // type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 20,
            onTap: _onItemTapped,
            elevation: 0


        ),
        drawer: Drawer(
          child: ListView(
            // padding: EdgeInsets.zero,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Appcolors.primary),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Appcolors.cyan,
                        radius: 50,
                        child: Image.asset(
                          Appimages.bus,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        )),

                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "drivername",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'OpenSans'),
                          ),
                          Text(
                            drivernumber,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'OpenSans'),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  'Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontFamily: 'OpenSans'),
                ),
                leading: Container(
                  child: Icon(
                    Icons.pages,
                    color: Appcolors.darkblack,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
                },
              ),
              ListTile(
                title: const Text(
                  'Member',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontFamily: 'OpenSans'),
                ),
                leading: Container(
                  child: Icon(
                    Icons.person,
                    color: Appcolors.darkblack,
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Member()));
                },
              ),
              ListTile(
                title: const Text(
                  'Leave',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontFamily: 'OpenSans'),
                ),
                leading: Container(
                  child: Icon(
                    Icons.leave_bags_at_home_outlined,
                    color: Appcolors.darkblack,
                  ),
                ),
                onTap: () {
                  _onItemTapped(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'Message',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontFamily: 'OpenSans'),
                ),
                leading: Container(
                  child: Icon(
                    Icons.history_edu_outlined,
                    color: Appcolors.darkblack,
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Message_screen()));
                },
              ),
              // ListTile(
              //   title: const Text(
              //     'Change Vehical',
              //     style: TextStyle(
              //         fontWeight: FontWeight.w600, fontFamily: 'OpenSans'),
              //   ),
              //   leading: Container(
              //     child: Icon(
              //       Icons.time_to_leave,
              //       color: Appcolors.darkblack,
              //     ),
              //   ),
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Change_Vehical()));
              //   },
              // ),
              ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontFamily: 'OpenSans'),
                ),
                leading: Container(
                  child: Icon(
                    Icons.settings,
                    color: Appcolors.darkblack,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'report',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontFamily: 'OpenSans'),
                ),
                leading: Container(
                  child: Icon(
                    Icons.report,
                    color: Appcolors.darkblack,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
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
                        Logout(context);



                      },
                      child: Text(
                        "        LogOut        ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Appcolors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'OpenSans'),
                      ),
                    )),
              ),

            ],
          ),
        )

    );
  }

  void Logout(BuildContext context)async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setBool("Login", false);
    SessionManagement sessionManagement=await SessionManagement();
    sessionManagement.DestroySessionparent();
    Fluttertoast.showToast(msg: "Logout successfully",toastLength: Toast.LENGTH_SHORT);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_screen()));

  }




}