import 'package:flutter/material.dart';
import 'package:emeterr/shared_preferences_helper.dart';
import 'onboardingPage.dart';
import 'briefPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: FutureBuilder<bool>(
      future: SharedPreferencesHelper.isFirstTime(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading indicator or splash screen if needed
          return MaterialApp(
            home: briefPage(),
          );
        } else if (snapshot.hasError) {
          // Handle errors
          return Scaffold(
            body: Center(
              child: Text('Error loading preferences'),
            ),
          );
        } else {
          final bool isFirstTime = snapshot.data ?? true;
          if (isFirstTime) {
            // Show the onboarding page
            return MaterialApp(
              home: onboardingPage(),
            );
          } else {
            // Navigate to the home page
            return MaterialApp(
              home: homePage(),
            );
          }
        }
      },
    ),
  ));
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    String userName = 'Phantom';
    String date = '14th February, 2024';
    String availableBalance = "\₦ 0.00";
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 55,
            left: 12,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "$userName",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$date",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 180,
                ),
                Card(
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Icon(Icons.notifications_outlined),
                    ))
              ],
            )),
        Positioned(
          //Set  positions for its elements
          bottom: 450,
          left: 12,
          child: Container(
            child: Card(
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(27.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Available Balance",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 140),
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("$availableBalance",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 209, 181, 145))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, left: 50, right: 50, top: 15),
                          child: Text("Withdraw"),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          //Set  positions for its elements
          bottom: 260,
          left: 9,
          child: Container(
            child: Card(
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Step by step guide on how to trade ",
                            style:
                                TextStyle(fontSize: 19, color: Colors.white)),
                        Text("your gift card for cash",
                            style: TextStyle(fontSize: 19, color: Colors.white))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 209, 181, 145))),
                          child: Text("Watch Now",
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Dismiss",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(129, 34, 25, 12)),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
