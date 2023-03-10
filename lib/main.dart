import 'package:flutter/material.dart';
import 'package:flutter_navigation_session8/controller.dart';
import 'package:flutter_navigation_session8/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context)=> const MyHomePage(title: "Home Page"),
        '/second':(context)=> const Page2()
      } ,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              //Navigator.pushNamed(context, '/second');
              Navigator.of(context).pushNamed('/second');

            }, child: Text('Go to Page2 by using named Routing')),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(Colors.deepOrange)),
                onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page2()));

            }, child: Text('Go to Page2 without named Routing')),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Colors.green)),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:
                      (context)=>ScrollControllerDemo()));

                }, child: Text('Go to Controller Page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
