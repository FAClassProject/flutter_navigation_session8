import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 2"),),
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome to Page 2", style:

          TextStyle(fontSize: 30, color: Colors.deepOrange),),
          SizedBox(height: 30,),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purpleAccent)),
              onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Go back to  Home Page"))
        ],
      ),),
    );
  }
}
