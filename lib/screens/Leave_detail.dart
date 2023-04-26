
// import 'package:dropikmed001/utils/AppColors.dart';
import 'dart:convert';

import 'package:dropikmed001/Model/Leavetype.dart';
import 'package:dropikmed001/Services/Apiclass.dart';
import 'package:dropikmed001/screens/Planned_screen.dart';
import 'package:dropikmed001/screens/Today_screen.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:intl/intl.dart';

import '../Model/shifttype.dart';



class Leave_detail extends StatefulWidget {
  const Leave_detail({Key? key}) : super(key: key);

  @override
  State<Leave_detail> createState() => _Leave_detailState();
}

class _Leave_detailState extends State<Leave_detail>
    with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.primary,
        title: const Text('Leave'),
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          padding: EdgeInsets.all(2),
          indicator: BoxDecoration(
              color: Appcolors.white, borderRadius: BorderRadius.circular(15)),
          // splashBorderRadius: BorderRadius.circular(20),
          labelColor: Color.fromARGB(255, 253, 138, 30),
          // dividerColor: Appcolors.primary,

          overlayColor: MaterialStateProperty.all(Appcolors.white),
          unselectedLabelColor: Appcolors.black,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: 'Today',
            ),
            Tab(
              text: 'Planed',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Today_Leave(),
          planed(),

          // Center(
          //   child: Text("enter second page class"),
          // ),
        ],
      ),
    );
  }
}




