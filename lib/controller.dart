import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollControllerDemo extends StatefulWidget {
  const ScrollControllerDemo({Key? key}) : super(key: key);

  @override
  State<ScrollControllerDemo> createState() => _ScrollControllerDemoState();
}

class _ScrollControllerDemoState extends State<ScrollControllerDemo> {
  TextEditingController tv = TextEditingController();
  ScrollController sc = ScrollController();



  double pos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scroll Controllers"),),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: sc,
              itemCount: 10000,
              itemBuilder: (context, index) {
                sc.addListener(() {
                  pos;
                  sc.jumpTo(pos);

                });
                return Text('item $index');
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                sc.jumpTo(pos+=250);
                print('Position Click $pos');
              },
              child: Text(' Jump'))
        ],
      ),
    );
  }
}
