import 'package:dropikmed001/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Messsage_detail extends StatefulWidget {
  const Messsage_detail({Key? key}) : super(key: key);

  @override
  State<Messsage_detail> createState() => _Messsage_detailState();
}

class _Messsage_detailState extends State<Messsage_detail> {
  String? _chosenValue2;

  TextEditingController timeinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Appcolors.primary,
      title: Text(
        "Message",
        style:
        TextStyle(fontWeight: FontWeight.bold, fontFamily: 'OpenSana'),
      ),
    ),

        body:

        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 60,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(top: 10,left:20,right: 20,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.08),
                  borderRadius:
                  BorderRadius.circular(
                      12.0),

                ),
                child: DropdownButtonFormField<String>(
                  hint: Text('Please select'),
                  items: <String>[
                    'Break Down',
                    'Puncher',
                    'Accident',

                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (Value) {
                    setState(() {
                      _chosenValue2 = Value;
                    });
                  },
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.05)),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: TextFormField(
                        controller: timeinput,
                        decoration: InputDecoration(
                          labelText: "Time",
                          suffixIcon: Icon(Icons.timer),
                        ),
                        readOnly: true,
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                            initialTime: TimeOfDay.now(),
                            context: context,
                          );

                          if (pickedTime != null) {
                            print(pickedTime.format(context));
                            DateTime parsedTime = DateFormat.jm()
                                .parse(pickedTime.format(context).toString());

                            print(parsedTime);
                            String formattedTime =
                            DateFormat('HH:mm:ss').format(parsedTime);
                            print(formattedTime);

                            setState(() {
                              timeinput.text = formattedTime;
                            });
                          } else {
                            print("Time is not selected");
                          }
                        },
                      )),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: double.maxFinite,
                height: 150,
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.05)),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 10),
                    hintText: "Remarks",
                  ),
                  keyboardType: TextInputType.text,
                  autofocus: false,
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20,top: 200),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20))),
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(00, 50),
                        primary: Color(0xFFec9c24),
                      ),
                       onPressed: () {
                      //   Adddriverleave(_itemSelected!.id,_itemSelected1!.id,"function leave");
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => Profile_details()));
                        // }
                        // );
                      },
                      child: Text(
                        "        Save        ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Appcolors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'OpenSans'),
                      ),
                    )),
              ),
            ]),
        ),
    );







  }
}
