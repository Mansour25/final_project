import 'package:final_project/Tap/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddDataPage extends StatefulWidget {
  const AddDataPage({super.key});

  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.light,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("اسم العمود"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.numbers,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("ID"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.account_balance_outlined,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("اسم المحافظة"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.account_balance,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("اسم البلدية"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.add_road_rounded,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("اسم الشارع"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.height,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("ارتفاع العمود"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.merge_type,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("خامة العمود"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.sunny,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("توفر الطاقة البديلة"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.offline_bolt,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("فعالية الإضاءة"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.location_on_outlined,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("lat (X)"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Icon(Icons.location_on_outlined,
                        size: 23, color: Color.fromARGB(255, 4, 59, 153)),
                    hintText: ("long (Y)"),
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 50, 15, 30),
              child: SizedBox(
                height: 48,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    backgroundColor: Color.fromARGB(255, 4, 59, 153),
                    elevation: 0,
                  ),
                  onPressed: (() {
                    //  var usercontroller;
                    //  var passcontroller;
                    // if (usercontroller.text == 'exam' &&
                    //     passcontroller.text == 3305) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MapPage()));
                    // }
                  }),
                  child: Text(
                    "حـفــظ",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
