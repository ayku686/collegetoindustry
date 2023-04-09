import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class professionals extends StatefulWidget {
  const professionals({Key? key}) : super(key: key);

  @override
  State<professionals> createState() => _professionalsState();
}

class _professionalsState extends State<professionals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 14,right: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(
                  height: 50,
                ),
              Text("Mentors",style: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 34,color: Colors.white
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 40),
                child: Container(
                  height:50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.indigoAccent.shade100,
                          width: 2
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextField(
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for you mentor by name or category",
                          hintStyle: TextStyle(
                              color: Colors.white54
                          )
                      ),
                    ),
                  ),
                ),
              ),
                Container(
                  
                )
    ]
            ),
          ),
        ),
    );
  }
}
