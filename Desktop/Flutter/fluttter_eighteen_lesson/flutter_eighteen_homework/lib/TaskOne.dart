import 'package:flutter/material.dart';
import 'package:flutter_eighteen_homework/TaskThree.dart';
import 'package:flutter_eighteen_homework/TaskTwo.dart';

class TaskOneOne extends StatefulWidget {
  const TaskOneOne({Key? key}) : super(key: key);

  @override
  State<TaskOneOne> createState() => _TaskOneOneState();
}

class _TaskOneOneState extends State<TaskOneOne> {
  List listOfImage = [
    "assets/Union.png",
    "assets/fire.png",
    "assets/water.png",
  ];

  List listImage = [
    "assets/Union.png",
    "assets/Union.png",
  ];

  List listOfCard = [
    "assets/Vector 58.png",
    "assets/Vector 58.png",
    "assets/Vector 58.png",
  ];

  List listOfText = ["Light", "Gas", "Water"];

  List listOfCardText = [
    "Increase balance",
    "Decrease balance",
    "Add new Card"
  ];

  List listofCardName = [
    "Mastercard **** 3241",
    "Mastercard **** 3241",
  ];

  List listOfPrice = [
    "\$108.00",
    "\$138.32",
  ];


  List listofPage = [
    PageTwo(),
    TaskThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Choose communal type",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Color(0xff474A56)),
                                      ),
                                      width: 226,
                                      height: 40,
                                      margin:
                                          EdgeInsets.only(top: 17, left: 30),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) => TaskOneOne()));
                                      },
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(top: 0, left: 120),
                                        height: 12,
                                        width: 12,
                                        child: Container(
                                          child: Icon(
                                            Icons.close,
                                            color: Color(0xffBBC7D9),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    "SMART CARDS",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff8A8A8A)),
                                  ),
                                  width: 100,
                                  height: 17,
                                  margin: EdgeInsets.only(left: 30, top: 20),
                                ),
                                SizedBox(
                                  height: 240,
                                  child: ListView.builder(
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PageTwo()));
                                          }
                                          ,child: Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xffF6F6F9),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0))),
                                            width: 370,
                                            height: 50,
                                            margin: EdgeInsets.only(
                                                left: 30, top: 20, right: 30),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    listOfImage[index],
                                                    fit: BoxFit.cover,
                                                  ),
                                                  width: 18,
                                                  height: 22,
                                                  margin:
                                                      EdgeInsets.only(left: 20),
                                                ),
                                                index == 1 ? Container(
                                                  child: Text(
                                                    listOfText[index],
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Color(0xff474A56),
                                                    ),
                                                  ),
                                                  margin:
                                                      EdgeInsets.only(left: 20),
                                                  width: 49,
                                                  height: 19,
                                                ) : Container(
                                                  child: Text(
                                                    listOfText[index],
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Color(0xff474A56),
                                                    ),
                                                  ),
                                                  margin:
                                                  EdgeInsets.only(left: 20),
                                                  width: 49,
                                                  height: 19,
                                                ),
                                                Container(
                                                  width: 6,
                                                  height: 12,
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Color(0xff474A56),
                                                    size: 13,
                                                  ),
                                                  margin:
                                                      EdgeInsets.only(left: 235),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                                Container(
                                  child: Text(
                                    "OTHER",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff8A8A8A)),
                                  ),
                                  width: 100,
                                  height: 17,
                                  margin: EdgeInsets.only(left: 30, top: 10),
                                ),
                                SizedBox(
                                  height: 159,
                                  child: ListView.builder(
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xffF6F6F9),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0))),
                                          width: 370,
                                          height: 50,
                                          margin: EdgeInsets.only(
                                              left: 30, top: 20, right: 30),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                  listOfCard[index],
                                                  fit: BoxFit.cover,
                                                ),
                                                width: 18,
                                                height: 12,
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                              ),
                                              Container(
                                                child: Text(
                                                  listOfCardText[index],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Color(0xff474A56),
                                                  ),
                                                ),
                                                margin:
                                                    EdgeInsets.only(left: 20),
                                                width: 181,
                                                height: 19,
                                              ),
                                              Container(
                                                width: 6,
                                                height: 12,
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color(0xff474A56),
                                                  size: 13,
                                                ),
                                                margin:
                                                    EdgeInsets.only(left: 110),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Text("Button - 1")),
            ],
          ),
        ));
  }
}


