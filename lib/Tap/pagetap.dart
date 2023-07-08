import 'package:final_project/Tap/add_data.dart';
import 'package:final_project/Tap/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageTap extends StatefulWidget {
  const PageTap({super.key});

  @override
  State<PageTap> createState() => _PageTapState();
}

class _PageTapState extends State<PageTap> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 80,
          ),
          appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 4, 59, 153),
              bottom: TabBar(tabs: [
                // Tab(
                //   icon: Icon(Icons.map),
                //   text: ("الخريطة"),
                // ),
                Tab(
                  icon: Icon(Icons.add),
                  text: ("إضافة عمود"),
                ),
                Tab(
                  icon: Icon(Icons.report),
                  text: ("التقرير"),
                )
              ])),
          body: TabBarView(children: [
            // MapPage(),
            AddDataPage(),
            Text("data"),
          ]),

          //     body: TabBar(
          //       tabs: [
          // Tab(icon: Icon(Icons.map), ),
          // Tab(icon: Icon(Icons.add),),
          // Tab(icon: Icon(Icons.report),)

          // ])
        )
        //     (children: [
        //     TabBar(tabs: [
        //       Tab(
        //         icon: Icon(Icons.map),
        //         text: ("map"),
        //       ),
        //       Tab(
        //         icon: Icon(Icons.add),
        //         text: ("add"),
        //       ),
        //       Tab(
        //         icon: Icon(Icons.report_rounded),
        //         text: ("report"),
        //       )
        //     ]),
        //     Expanded(
        //         child: TabBarView(
        //       children: [
        //         Text("data"),
        //         Text("data"),
        //         Text("data"),
        //       ])
        //       )
        //   ]
        );
    // );

//       appBar: AppBar(),
//       body: DefaultTabController(length: 3,
//       child: TabBar(tabs: [
//               Tab(
//                 icon: Icon(Icons.map),
//               ),
//               Tab(
//                 icon: Icon(Icons.add),
//               ),
//               Tab(
//                 icon: Icon(Icons.pin),
//               ),
//             ]),

//           ),

//       // Column(
//       //   mainAxisAlignment: MainAxisAlignment.start,
//       //   crossAxisAlignment: CrossAxisAlignment.center,
//       //   children: [

//       //     DefaultTabController(
//       //       length: 3,
//       //       child: TabBar(tabs: [
//       //         Tab(
//       //           icon: Icon(Icons.map),
//       //         ),
//       //         Tab(
//       //           icon: Icon(Icons.add),
//       //         ),
//       //         Tab(
//       //           icon: Icon(Icons.pin),
//       //         ),
//       //       ]),
//       //     ),
//       //     Expanded(
//       //         child: TabBarView(
//       //             children: [
//       //             Text("data"),
//       //             Text("data"),
//       //             Text("data")]))
//       //   ],
//       // ),
    // );
  }
}
