import 'package:carousel_slider/carousel_slider.dart';
import 'package:colours/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../icomoon_icons.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:40,horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("H",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ), ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("ello",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ), ),
                            Text("Ayush",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ), ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
                Row(
                    children:const [
                      Icon(Icons.shopping_cart,color: Colors.white,),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                            Icomoon.user,color: Colors.white),
                      ),

                    ]
                ),
              ],
            ),

            Container(
              child: Container(
                height: 220,
                child: ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        Container(
                          margin: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(
                                color: Colors.white,
                                spreadRadius: 2,
                                blurRadius: 2
                            ),],
                            borderRadius: BorderRadius.circular(12.0),
                            image: const DecorationImage(
                              image: AssetImage("allimagess/img.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(
                                color: Colors.white,
                                spreadRadius: 2,
                                blurRadius: 2
                            ),],
                            borderRadius: BorderRadius.circular(12.0),
                            image: const DecorationImage(
                              image: AssetImage("allimagess/img1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(
                                color: Colors.white,
                                spreadRadius: 2,
                                blurRadius: 2
                            ),],
                            borderRadius: BorderRadius.circular(12.0),
                            image: const DecorationImage(
                              image: AssetImage("allimagess/img2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                      ],

                      //Slider Container properties
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: const Duration(milliseconds: 1400),
                        viewportFraction: 0.75,

                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 14,right: 7,top: 14,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:   [
                  Text(
                    "Top Mentors",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Stack(
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Stack(
                            alignment: Alignment.center,
                            children:[
                              Container(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.only(left: 14,right: 17),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colours.yellow.withOpacity(.8)
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.only(left: 14,right: 17),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage("allimagess/img5.jpg"),
                                        fit: BoxFit.cover
                                    ),
                                    color: Colors.white
                                ),
                              ),
                            ]
                        ),
                        Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colours.yellow.withOpacity(.8)
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("allimagess/img6.jpg"),
                                      fit: BoxFit.cover
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            ]
                        ),
                        Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colours.yellow.withOpacity(.8)
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("allimagess/img7.jpg"),
                                      fit: BoxFit.cover
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            ]
                        ),Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colours.yellow.withOpacity(.8)
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ]
                        ),Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(.6),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ]
                        ),
                      ],
                    ),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.0,top:40,bottom: 30,right: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              padding: EdgeInsets.only(left: 14,right: 14),
              child: Stack(
                  children:[
                    Container(
                      height: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.white10,
                            )
                          ]
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 22,bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow:  [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("Music",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                alignment: Alignment.center,

                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow:  [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("Development",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                alignment: Alignment.center,

                              ),

                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("Design",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow:  [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("Drawing",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                alignment: Alignment.center,

                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow:  [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("Comedy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                alignment: Alignment.center,

                              ),

                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("Real Estate",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Finance",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),),
                                ),
                                alignment: Alignment.center,

                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("IT & Software",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),),
                                alignment: Alignment.center,

                              ),

                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Photography",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),),
                                ),
                                alignment: Alignment.center,
                              ),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("AI/ML",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                alignment: Alignment.center,

                              ),

                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("Design",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                alignment: Alignment.center,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow:  [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade500,
                                          blurRadius: 10
                                      )
                                    ]
                                ),
                                height:50,
                                width: 120,
                                child: Text("Marketing",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                alignment: Alignment.center,

                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 14,right: 7,top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Top picks only for you",
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 19,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0,right: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 220,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 220,
                              height: 130,
                              child: Column(
                                children: const [
                                  Text(
                                    "Master in Blockchain Technology",
                                    style:TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  Text("nkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicn,",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.white
                                    ),
                                    maxLines: 3,)
                                ],
                              ),

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0,right: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 220,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 220,
                              height: 130,
                              child: Column(
                                children: const [
                                  Text(
                                    "Master in Blockchain Technology",
                                    style:TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  Text("nkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicn,",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.white
                                    ),
                                    maxLines: 3,)
                                ],
                              ),

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0,right: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 220,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 220,
                              height: 130,
                              child: Column(
                                children: const [
                                  Text(
                                    "Master in Blockchain Technology",
                                    style:TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  Text("nkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicn,",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.white
                                    ),
                                    maxLines: 3,)
                                ],
                              ),

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 220,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              alignment: Alignment.topLeft,
                              height: 130,
                              width: 220,
                              child: Column(
                                children: const [
                                  Text(
                                    "Master in Blockchain Technology",
                                    style:TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  Text("jhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicnjhdkflksajscgodnbopcasjloasjXnbjxnbjnxbisolbasaisclnkbdaicn,",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.white
                                    ),
                                    maxLines: 3,
                                  )
                                ],
                              ),

                            ),
                          )

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )

          ],
        ),

    );
  }
}


