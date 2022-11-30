import 'package:flutter/material.dart';
import 'package:flutter_eighteen_homework/TaskOne.dart';
import 'package:flutter_eighteen_homework/TaskThree.dart';

class TaskThree extends StatefulWidget {
  const TaskThree({Key? key}) : super(key: key);

  @override
  State<TaskThree> createState() => _TaskThreeState();
}

class _TaskThreeState extends State<TaskThree> {
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
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) => TaskOneOne()));
                                      },
                                      child: Container(
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          size: 20,
                                          color: Color(0xff474A56),
                                        ),
                                        width: 6,
                                        height: 12,
                                        margin:
                                            EdgeInsets.only(left: 30, top: 15),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Pay with template",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: Color(0xff474A56)),
                                      ),
                                      margin:
                                          EdgeInsets.only(left: 30, top: 23),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) => TaskThree()));
                                      },
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(top: 20, left: 190),
                                        height: 12,
                                        width: 12,
                                        child: Icon(
                                          Icons.close,
                                          color: Color(0xffBBC7D9),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    "TEMPLATES",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff8A8A8A)),
                                  ),
                                  width: 100,
                                  height: 17,
                                  margin: EdgeInsets.only(left: 30, top: 40),
                                ),
                                SizedBox(
                                  height: 240,
                                  child: ListView.builder(
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return index % 2 == 0
                                            ? Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffF6F6F9),
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff334D8F),
                                                        width: 1.5),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8.0))),
                                                width: 370,
                                                height: 65,
                                                margin: EdgeInsets.only(
                                                    left: 30,
                                                    top: 20,
                                                    right: 30),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Image.asset(
                                                        listImage[index],
                                                        fit: BoxFit.cover,
                                                      ),
                                                      width: 28,
                                                      height: 32,
                                                      margin: EdgeInsets.only(
                                                          left: 20),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20, top: 10),
                                                      width: 159,
                                                      height: 49,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              listOfText[index],
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xff474A56),
                                                              ),
                                                            ),
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 3),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              listofCardName[
                                                                  index],
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 15,
                                                      child: Text(
                                                          listOfPrice[index]),
                                                      margin: EdgeInsets.only(
                                                          left: 80),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            : Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffF6F6F9),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8.0))),
                                                width: 370,
                                                height: 65,
                                                margin: EdgeInsets.only(
                                                    left: 30,
                                                    top: 20,
                                                    right: 30),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Image.asset(
                                                        listImage[index],
                                                        fit: BoxFit.cover,
                                                      ),
                                                      width: 28,
                                                      height: 32,
                                                      margin: EdgeInsets.only(
                                                          left: 20),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20, top: 10),
                                                      width: 159,
                                                      height: 49,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              listOfText[index],
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xff474A56),
                                                              ),
                                                            ),
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 3),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              listofCardName[
                                                                  index],
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 15,
                                                      child: Text(
                                                          listOfPrice[index]),
                                                      margin: EdgeInsets.only(
                                                          left: 80),
                                                    ),
                                                  ],
                                                ),
                                              );
                                      }),
                                ),
                                Container(
                                  width: 370,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "Continue without template",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff334D8F)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    color: Color(0xff334D8F),
                                  ),
                                  margin: EdgeInsets.only(left: 30, top: 80),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Text("Button - 3")),
            ],
          ),
        ));
  }
}
