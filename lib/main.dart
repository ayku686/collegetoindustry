import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:collegetoindustry/MyRoutes.dart';
import 'package:collegetoindustry/pages/home.dart';
import 'package:collegetoindustry/pages/professionals.dart';
import 'package:collegetoindustry/pages/search.dart';
import 'package:collegetoindustry/pages/teacher_details.dart';
import 'package:colours/colours.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:page_transition/page_transition.dart';
import 'icomoon_icons.dart';
import 'package:responsive_framework/responsive_framework.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const collegetoindustry());
}

class collegetoindustry extends StatelessWidget {
  const collegetoindustry({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home:teacherDetails(),
      // MyHomePage(),
      routes: {
        MyRoutes.Homepage:(context)=> home(),
        MyRoutes.Search:(context)=> search()
      }
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey bottomNavigationKey = GlobalKey();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: Theme(

        data: ThemeData(

        ),
        child: FancyBottomNavigation(
            tabs: [
              TabData(iconData: Icomoon.book,
                  title: "Courses",
                  onclick: () {
                    final FancyBottomNavigationState fState = bottomNavigationKey
                        .currentState as FancyBottomNavigationState;
                    fState.setPage(2);
                  }),
              TabData(iconData: Icons.search_rounded,
                title: "Search",),
              TabData(iconData: Icomoon.expertise, title: "Professionals"),
              TabData(iconData: Icomoon.recruitment, title: "Industry"),

            ],
            initialSelection: 0,
            barBackgroundColor: Colors.black,
            circleColor: Colors.white,
            inactiveIconColor: Colors.white,
            activeIconColor: Colors.black,
            textColor: Colors.white,
            key: bottomNavigationKey,
            onTabChangedListener: (position) {
              setState(() {
                currentPage = position;
              });
            }
        ),
      ),
    );
  }
  _getPage(int page) {
    switch (page) {
      case 0:
        return home();
      case 1:
        return search();
      case 2:
        return professionals();
      default:
        return search();
    }
  }
}
