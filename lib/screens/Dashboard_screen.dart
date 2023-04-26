import 'package:dotted_line/dotted_line.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Model/login_model.dart';
import 'package:dropikmed001/Services/sessionmanagement.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:flutter/material.dart';

class Dashboard_screen extends StatefulWidget {
  const Dashboard_screen({Key? key}) : super(key: key);

  @override
  State<Dashboard_screen> createState() => _Dashboard_screenState();
}

class _Dashboard_screenState extends State<Dashboard_screen> {
  List imageUrl = [
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg",
    "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=7lrLYx-B",
    "https://www.telegraph.co.uk/content/dam/royal-family/2022/11/28/TELEMMGLPICT000317879575_trans_NvBQzQNjv4BqA7N2CxnJWnYI3tCbVBgu9T0aesusvN1TE7a0ddd_esI.jpeg?imwidth=680",
  ];
  List profilename = [
    "drashti vekariya",
    'dhruvi gadhiya',
    'drashti hapani',
    'devani denisha'
  ];
  List starttiming = ["9:00", '10:30', '9:30', '9:00'];
  List endtiming = ["6:00", '7:30', '6:30', '6:00'];
  List placename = ["Gota Chokadi", 'Cross Road', 'Gota Chokadi', 'Cross Road'];
  String? drivername = "";
  String? drivernumber = "";
  String profiledriver = "";
  @override
  void initState() {
    super.initState();
    setdata();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.primary,
        title: Text(
          "Dashboard",
          style: TextStyle(
              fontFamily: "OpenSans", color: Colors.white, fontSize: 20),
        ),
        leading: GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(Icons.menu),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                // showAlertDialog(context);
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.notifications_none),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 228, 228),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.bus_alert),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text(
                            "8",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Pick up ",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'OpenSans'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 228, 228),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.inbox),
                      Row(
                        children: const [
                          Text(
                            " 8",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans'),
                          ),
                          Text(
                            "       IN   ",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'OpenSans'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 230, 228, 228),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.outbox),
                    Row(
                      children: const [
                        Text(
                          "8",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans'),
                        ),
                        Text(
                          "OUT",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'OpenSans'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 230, 228, 228),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.watch),
                    Row(
                      children: const [
                        Text(
                          "  8   ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans'),
                        ),
                        Text(
                          " Wait",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'OpenSans'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://media.wired.com/photos/59269cd37034dc5f91bec0f1/191:100/w_1280,c_limit/GoogleMapTA.jpg"))),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: MediaQuery.of(context).size.height - 20,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: imageUrl.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 228, 228),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(38), // Image radius
                              child: Image.network(imageUrl[index],
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 3, bottom: 1),
                                  child: Text(
                                    "${profilename[index]}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "PickUp",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "${starttiming[index]} AM",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("-----"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Drop Off",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "${endtiming[index]} PM",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 60),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_sharp,
                                        size: 18,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "${placename[index]}",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )),
        ]),
      ),
    );
  }

  void setdata() async {
    SessionManagement sessionManagement = SessionManagement();
    LoginModel driver = await sessionManagement.getModel('Driver');
    print(driver.result?.res?.response?.token);
    setState(() {
      drivernumber = driver.result?.res?.response?.contactNo;
      drivername = driver.result?.res?.response?.id;
      // profiledriver = '052022';
    });
  }
}
