import 'package:flutter/material.dart';
import 'package:meal_profile/screens/cart.dart';
import 'package:meal_profile/screens/explore.dart';
import 'package:meal_profile/screens/home.dart';
import 'package:meal_profile/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Explore(),
    const Cart(),
    const Profile(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meal Profile',
        color: Colors.red,
        theme: ThemeData(
          fontFamily: "Montserrat",
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xff2F8D46),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        home: Scaffold(
          backgroundColor: pageIndex == 3 ? Color(0XFFDAB161) : Colors.white,
          body: pages[pageIndex],
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: pageIndex == 1
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))
                  : BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.10),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? const ImageIcon(
                          AssetImage("assets/images/home.png"),
                          color: Color(0xFF3A5A98),
                          semanticLabel: "Home",
                        )
                      : const ImageIcon(
                          AssetImage("assets/images/home.png"),
                          color: Color(0xFF8E99AF),
                          semanticLabel: "Home",
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? const ImageIcon(
                          AssetImage("assets/images/explore_active.png"),
                          color: Color(0xFF013A4D),
                          semanticLabel: "Explore",
                        )
                      : const ImageIcon(
                          AssetImage("assets/images/explore.png"),
                          color: Color(0xFF8E99AF),
                          semanticLabel: "Explore",
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? const ImageIcon(
                          AssetImage("assets/images/cart.png"),
                          color: Color(0xFF013A4D),
                          semanticLabel: "Cart",
                        )
                      : const ImageIcon(
                          AssetImage("assets/images/cart.png"),
                          color: Color(0xFF8E99AF),
                          semanticLabel: "Cart",
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: pageIndex == 3
                      ? const ImageIcon(
                          AssetImage("assets/images/profile_active.png"),
                          color: Color(0xFF013A4D),
                          semanticLabel: "Profile",
                        )
                      : const ImageIcon(
                          AssetImage("assets/images/profile.png"),
                          color: Color(0xFF8E99AF),
                          semanticLabel: "Profile",
                        ),
                ),
              ],
            ),
          ),
        ));
  }
}
