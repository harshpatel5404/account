import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: isSwitched ? HexColor("#240f63") : Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: isSwitched ? Colors.white : Colors.black,
              ),
              Container(
                child: Text(
                  "Settings",
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: isSwitched ? Colors.white : Colors.black),
                ),
              ),
              Container(
                child: Text(
                  "Account",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isSwitched ? Colors.white : Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        isSwitched ? Colors.indigo[400] : Colors.grey[200],
                    radius: 35.0,
                    child: Icon(
                      Icons.person,
                      color: isSwitched ? Colors.white : Colors.black,
                      size: 35,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "David Warner",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isSwitched ? Colors.white : Colors.black),
                      ),
                      Text(
                        "Person Info",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: isSwitched ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            isSwitched ? Colors.indigo[400] : Colors.grey[200]),
                    child: Icon(Icons.arrow_forward_ios,
                        color: isSwitched ? Colors.white : Colors.black),
                  )
                ],
              ),
              Container(
                child: Text(
                  "Settings",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isSwitched ? Colors.white : Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        isSwitched ? Colors.indigo[400] : Colors.grey[200],
                    radius: 25.0,
                    child: Icon(
                      Icons.person,
                       color: isSwitched ? Colors.white : Colors.black,
                      size: 25,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Language",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isSwitched ? Colors.white : Colors.black),
                        ),
                        Text(
                          "English",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: isSwitched ? Colors.white : Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                       color: isSwitched? Colors.indigo[400] :Colors.grey[200],
                    ),
                    child: Icon(Icons.arrow_forward_ios,
                        color: isSwitched ? Colors.white : Colors.black),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        isSwitched ? Colors.indigo[400] : Colors.grey[200],
                    radius: 25.0,
                    child: Icon(
                      Icons.notifications,
                       color: isSwitched ? Colors.white : Colors.black,
                      size: 25,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text(
                      "Notification",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isSwitched ? Colors.white : Colors.black),
                    ),
                  ),
                  Container(
                 

                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isSwitched? Colors.indigo[400] :Colors.grey[200],
                    ),
                    child: Icon(Icons.arrow_forward_ios,
                        color: isSwitched ? Colors.white : Colors.black),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: isSwitched? Colors.indigo[400] :Colors.grey[200],

                    radius: 25.0,
                    child: Icon(
                      Icons.dark_mode,
                       color: isSwitched ? Colors.white : Colors.black,
                      size: 25,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dark Mode",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isSwitched ? Colors.white : Colors.black),
                        ),
                        Text(
                          "On",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: isSwitched ? Colors.white : Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: (bool val) {
                                setState(() {
                                  isSwitched = !isSwitched;
                                });
                              },
                              value: isSwitched,
                              activeColor: Colors.blueAccent,
                              activeTrackColor: Colors.blue,
                              inactiveThumbColor: Colors.black,
                              inactiveTrackColor: Colors.black38,
                            )),
                      ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: isSwitched? Colors.indigo[400] :Colors.grey[200],

                    radius: 25.0,
                    child: Icon(
                      Icons.network_wifi,
                       color: isSwitched ? Colors.white : Colors.black,
                      size: 25,
                    ),
                  ),
                  Text(
                    "Help",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: isSwitched ? Colors.white : Colors.black),
                  ),
                  SizedBox(width: 100),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                     color: isSwitched? Colors.indigo[400] :Colors.grey[200],
                    ),
                    child: Icon(Icons.arrow_forward_ios,
                        color: isSwitched ? Colors.white : Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
