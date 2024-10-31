import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:homejek_app/pages/notification/components//start_trip.dart';


import 'package:homejek_app/pages/notification/components/global.dart';

class IncomingRide extends StatefulWidget {
  const IncomingRide({Key? key}) : super(key: key);

  @override
  State<IncomingRide> createState() => _IncomingRideState();
}

class _IncomingRideState extends State<IncomingRide> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined,size: 30,
          color: Colors.white,),
        title: Text("Service disponibles "),
      ),
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/map_screen.png"))),
            ),
            Positioned(
              top: screenSize.height * 0.03,
              right: 16,
              left: 16,
              child: Stack(children: [
                Container(
                  height: 321,
                  width: screenSize.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff16192C),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: Colors.grey.shade300)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Une nouvelle demande est disponible",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: const [
                         /* Icon(
                            Icons.location_searching_rounded,
                            size: 20,
                            color: Colors.white,
                          ),*/
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Client : Amine Boualleg",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                     /* Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 8,
                        width: 2,
                        color: Colors.white,
                      ),*/
                      const SizedBox(
                        height: 5,
                      ),

                      Text(
                        "     Service : Coiffure pour Hommes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),

                      /*Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 8,
                        width: 2,
                        color: Colors.white,
                      ),*/
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: Color(0xffADD685),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Ariana",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 70,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.calendar_month,
                                          color: kIconGreyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Thu April 14th",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Date ",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 2,
                              color: kIconGreyColor,
                            ),
                            SizedBox(
                              height: 70,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.access_time_sharp,
                                          color: kIconGreyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "08:00",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Heure",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartTrip()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(24)),
                          child: const Center(
                            child: Text(
                              "Accepter la demande",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 6,
                    left: 266,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.transparent),
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ))
              ]),
            ),



            // deux
            Positioned(
              top: screenSize.height * 0.52,
              right: 16,
              left: 16,
              child: Stack(children: [
                Container(
                  height: 321,
                  width: screenSize.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff16192C),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: Colors.grey.shade300)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Une nouvelle demande est disponible",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: const [
                          /* Icon(
                            Icons.location_searching_rounded,
                            size: 20,
                            color: Colors.white,
                          ),*/
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Client : Salim Arfaoui",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      /* Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 8,
                        width: 2,
                        color: Colors.white,
                      ),*/
                      const SizedBox(
                        height: 5,
                      ),

                      Text(
                        "     Service : Ménage à domicile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),

                      /*Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 8,
                        width: 2,
                        color: Colors.white,
                      ),*/
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: Color(0xffADD685),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Tunis",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 70,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.calendar_month,
                                          color: kIconGreyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Sun April 10th",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Date ",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 2,
                              color: kIconGreyColor,
                            ),
                            SizedBox(
                              height: 70,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.access_time_sharp,
                                          color: kIconGreyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "10:30",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Heure",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartTrip()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(24)),
                          child: const Center(
                            child: Text(
                              "Accepter la demande",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 6,
                    left: 266,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.transparent),
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
