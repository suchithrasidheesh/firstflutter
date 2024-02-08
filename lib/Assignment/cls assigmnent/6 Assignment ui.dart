import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '6 LivingRoom.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.brown[300],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 100,
                        ),
                        child: Text(
                          'Control Panel',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 60),
                          child: Image(
                            image: AssetImage('assets/Icons/cloud.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 5),
                          child: Text(
                            'Lightening',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 60),
                          child: Text(
                            "19'C",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 60),
                          child: Text(
                            'Spring Weather',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 40),
                          child: Text(
                            "25'C",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 40),
                          child: Text(
                            'Summer Weather',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                child: Container(
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 50),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 80,
                            width: 400,
                            color: Colors.grey[200],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.plug,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('29.5kwh'),
                                SizedBox(
                                  width: 200,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.boltLightning,
                                  size: 20,
                                  color: Colors.yellowAccent,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('303kwh')
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 120),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40)),
                          child: Container(
                            color: Colors.grey[200],
                            height: double.infinity,
                            child: Stack(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 40),
                                    child: Text(
                                      'Scences',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 350),
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              sences(),
                              Padding(
                                padding: const EdgeInsets.only(top: 130),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 40),
                                      child: Text(
                                        'Rooms',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 350),
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              rooms(context),
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }

  sences() {
    return Padding(
      padding: const EdgeInsets.only(top: 55, left: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 80,
            width: 80,
            color: Colors.brown[400],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_filled,
                  size: 20,
                ),
                Text(
                  'Home',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 80,
            width: 80,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.roller_shades_closed_outlined,
                  size: 20,
                ),
                Text(
                  'Room',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 80,
            width: 80,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.nights_stay,
                  size: 20,
                ),
                Text(
                  'Sleep',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 80,
            width: 80,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.alarm_outlined,
                  size: 20,
                ),
                Text(
                  'SetUp',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  rooms(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 185, left: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LivingRoom()));
              },
              child: Container(
                height: 150,
                width: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/Icons/sofa.png'),
                      height: 100,
                      width: 150,
                    ),
                    Column(
                      children: [
                        Text('LivingRoom'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Furnitures')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 150,
              width: 200,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/Icons/bed.png'),
                      height: 80,
                      width: 150,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Text('BedRoom'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Roomss')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
