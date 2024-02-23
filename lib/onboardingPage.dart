// introductory_page.dart

import 'package:flutter/material.dart';
import 'package:emeterr/shared_preferences_helper.dart';
import 'main.dart';

class onboardingPage extends StatefulWidget {
  @override
  State<onboardingPage> createState() => _onboardingPageState();
}

class _onboardingPageState extends State<onboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Positioned(
        //   bottom: 190,
        //   left: 50,
        //   child: PageView.builder(
        //     itemCount: 3,
        //     itemBuilder: (context, index) {
        //       return Padding(
        //         padding: EdgeInsets.all(40),
        //         child: Column(children: [Image.asset("images/magnet (1) (1).jpeg")]),
        //       );
        //     },
        //   ),
        // ),
        Column(children: [
          Container(
              child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 100, right: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text("This"),
                    ),
                  ),
                ),
                Icon(Icons.donut_large)
              ],
            ),
          )),
        ]),
        Positioned(
          bottom: 150,
          left: 50,
          child: Column(
            children: [
              Container(
                child: Column(children: [
                  Text("Secure Trading"),
                  Column(
                    children: [
                      Text(
                        "Safe and Absolutely Secured ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Trading Experience",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),

        //Login Column
        Positioned(
          bottom: 30,
          left: 30,
          child: Column(
            children: [
              Container(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homePage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 100, right: 100),
                      child: Text("Get Started"),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text("I have an account."),
                    GestureDetector(
                        onTap: () {},
                        child: Text(
                          " Login",
                          style: TextStyle(color: Colors.orange),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
