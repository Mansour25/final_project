import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:final_project/log_in.dart';
import 'package:final_project/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Tap/map_page.dart';
import 'Tap/pagetap.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  List<BottomBarItem> items = [
    BottomBarItem(
      inActiveItem: Icon(
        Icons.home,
        color: Colors.blueGrey,
      ),
      activeItem: Icon(
        Icons.home,
        color: Colors.blueAccent,
      ),
      itemLabel: 'Page 2',
    ),
    BottomBarItem(
      inActiveItem: Icon(
        Icons.map_outlined,
        color: Colors.blueGrey,
      ),
      activeItem: Icon(
        Icons.map_outlined,
        color: Colors.blueAccent,
      ),
      itemLabel: 'Page 2',
    ),
    BottomBarItem(
      inActiveItem: Icon(
        Icons.settings,
        color: Colors.blueGrey,
      ),
      activeItem: Icon(
        Icons.settings,
        color: Colors.blueAccent,
      ),
      itemLabel: 'Page 2',
    ),
  ];
  final _pageController = PageController(initialPage: 0);

  int maxCount = 5;
  final List<Widget> bottomBarPages = [
    PageTap(),
    MapPage(),
    Settings(),
  ];

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: Colors.white,
              showLabel: false,
              notchColor: Colors.black87,

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: items,
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}

//
// Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// GestureDetector(
// onTap: () {
// Navigator.push(context,
// MaterialPageRoute(builder: (context) => PageTap()));
// },
// child: PhysicalModel(
// borderRadius: BorderRadius.circular(15),
// elevation: 15,
// color: Colors.grey,
// child: Container(
// decoration: BoxDecoration(
// color: Colors.blue,
// borderRadius: BorderRadius.circular(15),
// ),
// alignment: Alignment.center,
// width: double.infinity,
// child: Text(
// 'الرئيسية',
// style: TextStyle(
// color: Colors.white,
// fontSize: 25,
// ),
// ),
// ),
// ),
// ),
// SizedBox(
// height: 25,
// ),
// GestureDetector(
// onTap: () {
// Navigator.push(context,
// MaterialPageRoute(builder: (context) => MapPage()));
// },
// child: PhysicalModel(
// borderRadius: BorderRadius.circular(15),
// elevation: 15,
// color: Colors.grey,
// child: Container(
// decoration: BoxDecoration(
// color: Colors.blue,
// borderRadius: BorderRadius.circular(15),
// ),
// alignment: Alignment.center,
// width: double.infinity,
// child: Text(
// 'الخريطة',
// style: TextStyle(
// color: Colors.white,
// fontSize: 25,
// ),
// ),
// ),
// ),
// ),
// // Padding(
// //   padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
// //   child: SizedBox(
// //     height: 50,
// //     width: 150,
// //     child: ElevatedButton(
// //       style: ElevatedButton.styleFrom(
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(7),
// //         ),
// //         backgroundColor: Color.fromARGB(255, 103, 109, 119),
// //         elevation: 0,
// //       ),
// //       onPressed: (() {
// //         Navigator.push(context,
// //             MaterialPageRoute(builder: (context) => LogInPage()));
// //       }),
// //       // onPressed: () {  },
// //       child: Text(
// //         "تسجيل خروج",
// //         style: TextStyle(fontSize: 18),
// //       ),
// //     ),
// //   ),
// // ),
// ],
// )),
