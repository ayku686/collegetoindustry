import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class teacherDetails extends StatelessWidget {
  const teacherDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.purpleAccent,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Tab(
                  icon: Icon(Icons.keyboard_backspace),
                ),
                Tab(
                  icon: Icon(Icons.star_border_outlined)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
