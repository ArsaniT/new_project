import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List colorList= [Colors.orange,Colors.red,Colors.blue,Colors.green];
  int colorCount = 0;
  Random random =  Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:InkWell(
          onTap: (){
            ///to change Colors Random
            setState(() {
              colorCount= random.nextInt(colorList.length);
            });

          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height,
            color: colorList[colorCount],
            child: const Center(
              child: Text(
                "Hey There ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
          )),
    );
  }
}
