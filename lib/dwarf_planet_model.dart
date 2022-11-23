import 'package:flutter/cupertino.dart';

class DwarfModel {
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

  DwarfModel(
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
}
