import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listwisatabandung/DetailScreen.dart';
import 'package:listwisatabandung/TourismPlaceGrid.dart';
import 'package:listwisatabandung/model/tourism_place.dart';
import 'package:listwisatabandung/TourismPlaceList.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Bandung'),
        backgroundColor: Colors.green[100],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return TourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return TourismPlaceGrid(gridCount: 4);
          } else {
            return TourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}
