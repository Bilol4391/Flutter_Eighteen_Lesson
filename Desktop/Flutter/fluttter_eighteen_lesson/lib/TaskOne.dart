import 'package:flutter/material.dart';

class TaskOne extends StatefulWidget {
  const TaskOne({Key? key}) : super(key: key);

  @override
  State<TaskOne> createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA3A3A3),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Stack(
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => TaskOne()));
                                  },
                                  child: Icon(
                                    Icons.close,
                                    size: 30,
                                    color: Color(0xffC8D1E1),
                                  ),
                                ),
                                padding:
                                    EdgeInsets.only(bottom: 250, left: 250),
                                height: 300,
                                width: 300,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 130, top: 40),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFFD4D4),
                                ),
                                child: Image.asset("assets/Group 1.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 100, left: 110),
                                child: Text(
                                  "Warning!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff334D8F),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                    "This transaction cannot be reversed. Are you sure you want to delete the template?", textAlign: TextAlign.center, style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff474A56),
                                ),),
                                margin: EdgeInsets.only(left: 30, top: 140),
                                width: 250,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => TaskOne()));
                                },child: Container(
                                  width: 178,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xff334D8F),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Center(child: Text("Yes, I am sure", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                                  margin: EdgeInsets.only(top: 210, left: 70),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Text("WARNING!")),
          ],
        ),
      ),
    );
  }
}
