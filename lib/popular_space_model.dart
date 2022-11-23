import 'package:flutter/cupertino.dart';

class PopularModel {
  // int? id;
  String? objectName;
  String? objectPict;
  String? objectSub;
  String? description;
  String? objectDetail;
  String? objectDetail1;
  String? objectDetail2;
  String? objectDetail3;
  String? lengthOfDay;
  String? lengthOfYear;
  String? surfaceTemp;
  String? distanceFromSun;
  String? mass;
  String? moons;
  Color? mainColor;

  PopularModel(
      // {required this.id,
      {
    required this.objectName,
    required this.objectPict,
    required this.objectSub,
    required this.description,
    required this.objectDetail,
    required this.objectDetail1,
    required this.objectDetail2,
    required this.objectDetail3,
    required this.lengthOfDay,
    required this.lengthOfYear,
    required this.surfaceTemp,
    required this.distanceFromSun,
    required this.mass,
    required this.moons,
    required this.mainColor,
  });
}
