import 'package:flutter/material.dart';

//creating a brief screen page!!
class briefPage extends StatefulWidget {
  const briefPage({super.key});

  @override
  State<briefPage> createState() => _briefPageState();
}

class _briefPageState extends State<briefPage> {
  @override
  // void initState() {
  //   super.initState();

  //   Future.delayed(Duration(seconds: 5), () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (context) => homePage()),
  //     );
  //   });
  // }
  // @override //wondering why i put this here

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("This is the Splash screen")),
    );
  }
}
// done!!