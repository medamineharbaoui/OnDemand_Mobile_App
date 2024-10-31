import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
//import 'package:naija_cabbie/HomeScreen/home.dart';
//import 'package:naija_cabbie/Navigation%20pages/home_page.dart';

import 'package:homejek_app/pages/notification/components/global.dart';

class StartTrip extends StatefulWidget {
  const StartTrip({Key? key}) : super(key: key);

  @override
  State<StartTrip> createState() => _StartTripState();
}

class _StartTripState extends State<StartTrip> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined,size: 30,
          color: Colors.white,),
        title: Text("Service disponibles "),
      ),
      body:
      SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/back22.JPG"))),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: screenSize.height * 0.6,
                  width: screenSize.width,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                          width: 56,
                          child: Divider(
                            thickness: 5,
                            color: Color(0xfff0f1f5),
                          )),
                      const Text(
                        "Demande Acceptée !",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              //backgroundColor: Color(0xff06D1B0),
                              radius: 25,
                              backgroundImage: const AssetImage(
                                  "assets/images/amine_boualleg.JPG"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Amine Boualleg",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "+216 27897342",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Text("Trip"),
                            Row(
                              children: [
                                Icon(
                                  Icons.featured_video_sharp,
                                  size: 25,
                                  color: Color(0xff06D1B0),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "ID: 1143155",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                  Icon(
                                  Icons.calendar_month,
                                  size: 25,
                                  color: Color(0xff06D1B0),
                                  ),
                                  const SizedBox(
                                  height: 35,
                                  ),
                                const Text(
                                  "     Date: Thu April 14th",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),


                              ],
                            ),

                            Row(
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  size: 25,
                                  color: Color(0xff06D1B0),
                                ),
                                const SizedBox(
                                  height: 35,
                                ),

                                const Text(
                                  "     Heure: 08:00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),





                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 25,
                                  color: Color(0xff06D1B0),
                                ),
                                const SizedBox(
                                  width: 20,
                                  height: 35,
                                ),
                                const Text(
                                  "Ariana",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      GestureDetector(
                        onTap: () {
                          /*Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen())); */
                        },


                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 160,
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                color: Color(0xff06D1B0),
                                borderRadius: BorderRadius.circular(24)),
                            child: const Text(
                              "Appelez",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),


                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
