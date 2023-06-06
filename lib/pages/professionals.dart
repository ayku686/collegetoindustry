import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:collegetoindustry/Widgets/Dimensions.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class professionals extends StatefulWidget {
  const professionals({Key? key}) : super(key: key);
  @override
  State<professionals> createState() => _professionalsState();
}

class _professionalsState extends State<professionals> {
  String hiEmoji = '\u{1F44B}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: SingleChildScrollView(

          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

            const SizedBox(
              height: 50,
            ),
            const Text(
              "Mentors",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.white),
            ),
            Stack(children: [
              Padding(
                padding: EdgeInsets.only(top: 28,right: 5,left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),

                    image:const DecorationImage(

                        image: AssetImage("allimagess/professor.png"),
                        alignment: Alignment.topCenter
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purpleAccent,
                        offset: Offset(0,3),
                        blurRadius: 10
                      )
                    ]
                  ),
                  height: 310,

                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 270.0, horizontal:20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.indigoAccent.shade100, width: 2)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextField(
                      maxLines: 1,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for you mentor by name or category",
                          hintStyle: TextStyle(color: Colors.white54)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 176.0,left: 190),
                child: Text("  Hi $hiEmoji BUDDY ",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                      color: Colors.deepOrange,
                      fontSize: 32),),
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
