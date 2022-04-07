import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFDAB161),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 40,
                left: 50,
                child: Image(
                  height: 68,
                  width: 65.5,
                  image: AssetImage("assets/images/cup.png"),
                ),
              ),
              Positioned(
                top: 110,
                right: 55,
                child: Image(
                  height: 55.5,
                  width: 65,
                  image: AssetImage("assets/images/pad.png"),
                ),
              ),
              Positioned(
                top: 165,
                left: 130,
                child: Image(
                  height: 66.5,
                  width: 64.5,
                  image: AssetImage("assets/images/bell.png"),
                ),
              ),
              Positioned(
                top: 220,
                right: -15,
                child: Image(
                  height: 70,
                  width: 60,
                  image: AssetImage("assets/images/flight.png"),
                ),
              ),
              Positioned(
                top: 220,
                left: -15,
                child: Image(
                  height: 71.5,
                  width: 69.5,
                  image: AssetImage("assets/images/headset.png"),
                ),
              ),
              Positioned(
                bottom: 150,
                right: -15,
                child: Image(
                  height: 55.5,
                  width: 65,
                  image: AssetImage("assets/images/pad.png"),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 60),
                    child: Image(
                      height: 118,
                      width: 108,
                      image: AssetImage("assets/images/dp.png"),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                      height: 26,
                      width: 91,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text("Buyer",
                              style: TextStyle(
                                  color: Color(0XFF333333),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)))),
                  SizedBox(height: 12),
                  Text("Semedo Dapaah",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 5),
                  Text("Head Cook /  Marina, Lagos",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/images/facebook.png"),
                      ),
                      SizedBox(width: 15),
                      Image(
                        image: AssetImage("assets/images/twitter.png"),
                      ),
                      SizedBox(width: 15),
                      Image(
                        image: AssetImage("assets/images/instagram.png"),
                      ),
                      SizedBox(width: 15),
                      Image(
                        image: AssetImage("assets/images/linkdin.png"),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text("Commentaries",
                                        style: TextStyle(
                                            color: Color(0XFF88888F),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                    Text("11",
                                        style: TextStyle(
                                            color: Color(0XFF333333),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700))
                                  ],
                                ),
                                SizedBox(width: 50),
                                Column(
                                  children: [
                                    Text("Orders",
                                        style: TextStyle(
                                            color: Color(0XFF88888F),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                    Text("68",
                                        style: TextStyle(
                                            color: Color(0XFF333333),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            const Divider(
                              color: Color(0XFFD5D5E0),
                              thickness: 0.5,
                            ),
                            SizedBox(height: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("About",
                                    style: TextStyle(
                                        color: Color(0XFF88888F),
                                        fontSize: 14,
                                        fontFamily: "Monteserrat-light.tff",
                                        fontWeight: FontWeight.w300)),
                                SizedBox(height: 10),
                                Text(
                                    "Hello, we want you to work with us in developing a great meal profile. We use this platform to improve our services and give feedback to our customers",
                                    style: TextStyle(
                                        color: Color(0XFF333333),
                                        height: 1.5,
                                        fontSize: 13,
                                        fontFamily: "Monteserrat-light.tff",
                                        fontWeight: FontWeight.w300))
                              ],
                            ),
                            SizedBox(height: 10),
                            const Divider(
                              color: Color(0XFFD5D5E0),
                              thickness: 1,
                            ),
                            SizedBox(height: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact",
                                    style: TextStyle(
                                        color: Color(0XFF88888F),
                                        fontSize: 14,
                                        fontFamily: "Monteserrat-light.tff",
                                        fontWeight: FontWeight.w300)),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/contact.png"),
                                    ),
                                    SizedBox(width: 15),
                                    Text("+0 123 4456 7890",
                                        style: TextStyle(
                                            color: Color(0XFF979797),
                                            fontSize: 13,
                                            fontFamily: "Monteserrat-light.tff",
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage("assets/images/email.png"),
                                    ),
                                    SizedBox(width: 15),
                                    Text("hello@mytruq.com",
                                        style: TextStyle(
                                            color: Color(0XFF979797),
                                            fontSize: 13,
                                            fontFamily: "Monteserrat-light.tff",
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                                SizedBox(height: 30),
                                const Divider(
                                  color: Color(0XFFD5D5E0),
                                  thickness: 0.5,
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 30,
                                  child: Center(
                                    child: Image(
                                      height: 9,
                                      width: 15.9,
                                      image: AssetImage(
                                          "assets/images/arrow_down.png"),
                                      color: Color(0XFF88888F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
