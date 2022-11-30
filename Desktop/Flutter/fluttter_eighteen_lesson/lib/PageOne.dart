import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Tanlang"),
                        content: Text("Avatarni rasmini ozgartirish uchun"),
                        actions: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(Icons.camera_alt),
                                Text("camera")
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [Icon(Icons.photo), Text("Galareya")],
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: Text("Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text("Tanlang"),
                        actions: [
                          CupertinoButton(
                              child: Text("camera"), onPressed: () {}),
                          CupertinoButton(
                              child: Text("Galareya"), onPressed: () {}),
                          CupertinoButton(
                              child: Text("Telefon"), onPressed: () {}),
                          CupertinoButton(
                              child: Text("back"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      );
                    });
              },
              child: Text("Ios Dialog"),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              color: Colors.green,
                              child: Column(
                                children: [
                                  Text("Camera"),
                                  Text("Tanlash"),
                                  Text("Gallerya"),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text("botttom sheet"));
            }),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                    // width: 60,
                    height: 250,
                    color: Colors.blueAccent,
                  );
              });
            }, child: Text("Modal bottom sheet"))
          ],
        ),
      ),
    );
  }
}
