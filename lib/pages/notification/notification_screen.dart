import 'package:homejek_app/pages/notification//bulletin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';



class NotificationScreen extends StatelessWidget {
  const NotificationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            
            title: Text("Notification "),
            backgroundColor: Color(0xff06D1B0),
          ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Notification du jour",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            example1(),
            const SizedBox(height: 10),
            example2(),
            const SizedBox(height: 10),
            example3(),
            const SizedBox(height: 10),
            example1(),
            const SizedBox(height: 10),



            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Service à achever",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            example4(),
          ],
        ),
      ),
    );
  }

// This is an example where a common icon is used.
// The duration is set to 4 seconds.

  Center example1() {
    return Center(
      child: Bulletin(
        backgroundColor: Color(0xff06D1B0),
          textStyle: const TextStyle(fontSize: 16, color: Colors.white),
        icon: SvgPicture.asset(
            "assets1/icons/Bell.svg",
            color: Colors.white

        ),
        //gapDuration: const Duration(seconds: 4),
        children: [
          BulletinItem(
            text:
                "Notification HomeJek : Une nouvelle demande de service est disponible à Boumhal",
            onTap: () {

            },
          ),
          BulletinItem(
            text:
                "Notification HomeJek :  Une nouvelle demande de service est disponible à Ariana",
            onTap: () {

            },
          ),

        ],
      ),
    );
  }

// This is an example where icon is specified in the BulletinItem.
  Center example2() {
    return Center(
      child: Bulletin(
        backgroundColor: const Color.fromARGB(255, 255, 229, 208),
        //gapDuration: const Duration(seconds: 2),
          textStyle: const TextStyle(fontSize: 16),
        children: [
          BulletinItem(
            icon: SvgPicture.asset(
                "assets1/icons/Bell.svg",
                color: Color(0xff06D1B0)

            ),
            text:
                "Notification HomeJek : Une demande de service est annulé . Cliquez pour voir les details.",
            onTap: () {

            },
          ),
          BulletinItem(
             icon: SvgPicture.asset(
          "assets1/icons/Bell.svg",
          color: Colors.white

          ),
            text:
                "text5",
            onTap: () {

            },
          ),
          BulletinItem(
            icon: SvgPicture.asset(
                "assets1/icons/Bell.svg",
                color: Colors.white

            ),
            text:
                "Notification HomeJek : Une demande de service est annulé . Cliquez pour voir les details.",
            onTap: () {

            },
          ),
        ],
      ),
    );
  }

  Center example3() {
    return Center(
      child: Bulletin(
        backgroundColor: Color(0xff06D1B0),
        //gapDuration: const Duration(seconds: 2),
        textStyle: const TextStyle(fontSize: 16 , color: Colors.white),
        showCloseButton: false,
        children: [
          BulletinItem(
            icon: SvgPicture.asset(
              "assets1/icons/Bell.svg",
              color: Colors.white ,

            ),
            text:
                "Notification HomeJek : Une demande de service est annulée . Cliquez pour voir les details.",
            onTap: () {

            },
          ),
          BulletinItem(
            icon: SvgPicture.asset(
                "assets1/icons/Bell.svg",
                color: Color(0xff06D1B0)

            ),
            text:
                "Notification HomeJek : Une demande de service est annulé . Cliquez pour voir les details.",
            onTap: () {

            },
          ),
          BulletinItem(
            icon: SvgPicture.asset(
                "assets1/icons/Bell.svg",
                color: Colors.white

            ),
            text:
                "Notification HomeJek : une nouvelle demande de service est disponible à Tunis.",
            onTap: () {
              debugPrint("hell");
            },
          ),
        ],
      ),
    );
  }

  Center example4() {
    return Center(
      child: Bulletin(
        backgroundColor: const Color.fromARGB(255, 255, 229, 208),
        //gapDuration: const Duration(seconds: 3),
        textStyle: GoogleFonts.getFont(
          "Red Hat Mono",
          textStyle: const TextStyle(fontSize: 14),
        ),
        children: [
          BulletinItem(
            icon: SvgPicture.asset(
                "assets1/icons/Bell.svg",
                color: Color(0xff06D1B0)

            ),
            text:
                "Notification HomeJek :",
            onTap: () {

            },
          ),
          BulletinItem(
            icon: SvgPicture.asset(
                "assets1/icons/Bell.svg",
                color: Color(0xff06D1B0)

            ),
            text:
                "Notification HomeJek :",
            onTap: () {

            },
          ),
          BulletinItem(
            icon: SvgPicture.asset(
                "assets1/icons/Bell.svg",
                color: Color(0xff06D1B0)

            ),
            text:
                "Vous avez un service en attente . Cliquez pour voir les details.",
            onTap: () {
              debugPrint("OnTap Function called for BulletinItem 3 ");
            },
          ),
        ],
        /*
        closeButton: Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(3),
          child: const Icon(
            Icons.close_rounded,
            size: 12,
            color: Colors.black,
          ),
          decoration: const BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),*/
      ),
    );
  }
}
