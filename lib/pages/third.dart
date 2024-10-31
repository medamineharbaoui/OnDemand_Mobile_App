import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

            colors: [
              Colors.white,
              Color(0xff06D1B0),
              Colors.white,
            ],

          ),
        ),


        //height: MediaQuery.of(context).size.height,

        child:Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(

              height: MediaQuery.of(context).size.height/1.74,
              width: MediaQuery.of(context).size.width/1,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('assets/ondemandservice1.jpg'),
                ),
                borderRadius:BorderRadius.only(
                  topRight: Radius.circular(80),

                ),
              ),
              child:
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0,top: 55.0),
                child : Text('Vos Besoins en un seul CLICK ! ',style:GoogleFonts.aclonica(
                    fontSize: 22.7,color: Colors.white
                ),
                    textAlign:TextAlign.center ),

              ),

            ),

            Container(

              height: 70,
              width: MediaQuery.of(context).size.width/1,

              child:
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0,top: 15.0),
                child : Text('Connectez-Vous et Beneficier de nos services ! ',style:GoogleFonts.aclonica(
                    fontSize: 20.7,color: Colors.white
                ),
                    textAlign:TextAlign.center ),

              ),


            ),



            //connectez-vous button
            SizedBox(height: 80.0 ),
            Center(
              child:Container(

                  height: 40.0,
                  width: 300,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Color(0xff06D1B0),
                    color: Color(0xff06D1B0),
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');

                      },
                      child: Center(
                        child: Text(
                          'Connectez-Vous',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  )),
            ),

            //Signup button

            SizedBox(height:0 ),
            Center(
              child: Container(
                  margin: EdgeInsets.all(30),
                  height: 40.0,
                  width: 300,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Color(0xff06D1B0),
                    color: Color(0xff06D1B0),
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Center(
                        child: Text(
                          'Inscrivez-Vous',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  )),
            ),

            /* bouton next louta
            Container(
              //height: MediaQuery.of(context).size.height/15.5,
              width: MediaQuery.of(context).size.width/3.5,
              padding: EdgeInsets.all(10.0),
              child:
              Text('Next',style:GoogleFonts.aclonica(
              fontSize: 22.7,color: Colors.white
              ),
                textAlign:TextAlign.center ),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50)
                  )

              ),
            ), */


          ],
        ),
      ),




      /*
            // new to homejek ? REGISTER
            SizedBox(height: 15.0),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text(
                   'New to HOMEJEK?',
                   style: TextStyle(
                     fontFamily: 'Montserrat',
                  ),
                 ),
                SizedBox(width: 5.0),
                 InkWell(
                   child: Text('Register',
                       style: TextStyle(
                           color: Colors.green,
                           fontFamily: 'Montserrat',
                           fontWeight: FontWeight.bold,
                           decoration: TextDecoration.underline)),
                 )
               ],
             ), */



      /* nouton najmou n7otouh fi blasset l container
       floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.lightBlueAccent,
        child: Text('Next',style:
        TextStyle(
            fontSize:18, fontWeight: FontWeight.w500, color: Colors.white
        )),
      ),*/
    );
  }
}