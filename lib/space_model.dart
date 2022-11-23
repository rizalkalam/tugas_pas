import 'package:flutter/cupertino.dart';

class SpaceModel {
  // int? id;
  String? objectName;
  String? objectPict;
  String? objectDetail;
  String? rotationsub;
  String? rotation;
  String? lengthOfDay;
  String? lengthOfYear;
  String? surfaceTemp;
  String? radius;
  String? distanceFromSun;
  String? mass;
  String? moons;
  Color? mainColor;

  SpaceModel(
      // {required this.id,
      {
    required this.objectName,
    required this.objectPict,
    required this.objectDetail,
    required this.rotationsub,
    required this.rotation,
    required this.lengthOfDay,
    required this.lengthOfYear,
    required this.surfaceTemp,
    required this.radius,
    required this.distanceFromSun,
    required this.mass,
    required this.moons,
    required this.mainColor,
  });

  // List<Map> data = [
  //   {
  //     'objectName': 'Earth',
  //     'objectPict': 'assets/Earth.png',
  //     'objectDetail1': 'aaa',
  //     'objectDetail2': 'bbb'
  //   },
  //   {
  //     'objectName': 'Mars',
  //     'objectPict': 'assets/Earth.png',
  //     'objectDetail1': 'aaa',
  //     'objectDetail2': 'bbb'
  //   },
  //   {
  //     'objectName': 'Saturn',
  //     'objectPict': 'assets/Earth.png',
  //     'objectDetail1': 'aaa',
  //     'objectDetail2': 'bbb'
  //   }
  // ];

  // data.forEach((element){
  //   spaces.add(
  //     SpaceModel(
  //       objectName: element['objectName']
  //       objectPict: element['objectPict']
  //       objectDetail1: element['objectDetail1']
  //       objectDetail2: element['objectDetail2']
  //     )
  //   );
  // });

}
