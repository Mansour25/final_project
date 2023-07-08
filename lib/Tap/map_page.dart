import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'dart:html';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const LatLng _center = const LatLng(31.398899, 34.3986155);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MAP",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 4, 59, 153),
        ),
        body: Center(
          child: Container(
            height: 800,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 10.99,
              ),
            ),
          ),
        ));
  }
}
