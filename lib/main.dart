import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
  String btnText1 ='Button One';
Color btnColor1 = Colors.deepOrange;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),

    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child:Text('Karim',style: (TextStyle(color: Colors.black)),

          ),
        ),
      ),
   body:
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                RaisedButton(
                    color: btnColor1,
                    child: Text(btnText1),
                    onPressed: (){
                      setState(() {
                        btnColor1 = Colors.blueGrey;
                        btnText1 = 'Button Pressed';
                      });
                    })
                ,Image.network('https://purepng.com/public/uploads/large/purepng.com-earthearthplanetglobethird-planet-from-the-sun-1411526987774l0ioj.png'),
                Image.network('https://www.pinclipart.com/picdir/big/15-159618_free-clock-clipart.png')
              ],
            ),
          ),
        )
    );
  }
}
