import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/all.dart';
import 'package:project_pas/allPage.dart';
import 'package:project_pas/planet_widget.dart';
import 'package:project_pas/popular_space_model.dart';
import 'package:project_pas/space_model.dart';

import 'astronomicalnews_model.dart';
import 'data_model.dart';
import 'dwarf_planet_model.dart';

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> with SingleTickerProviderStateMixin {
  late TabController _controller;
  late ScrollController _scrollController2;
  List<PopularModel> popular = [];
  List<SpaceModel> spaces = [];
  List<AstronomicalNewsModel> news = [];
  List<DwarfModel> dwarf = [];

  List<Widget> list = [
    Tab(
      child: Text("ALL", style: GoogleFonts.orbitron()),
    ),
    Tab(
      child: Text("PLANETS", style: GoogleFonts.orbitron()),
    ),
    Tab(
      child: Text("STARS", style: GoogleFonts.orbitron()),
    ),
    Tab(
      child: Text("MOONS", style: GoogleFonts.orbitron()),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _buatlist();

    _scrollController2 = ScrollController();

    _controller.addListener(() {
      print("Selected Index: " + _controller.index.toString());
    });
  }

  _buatlist() async {
    data.forEach((element) {
      spaces.add(SpaceModel(
          // id: element['id'],
          objectName: element['objectName'],
          objectPict: element['objectPict'],
          objectDetail: element['objectDetail'],
          rotationsub: element['rotationsub'],
          rotation: element['rotation'],
          lengthOfDay: element['lengthOfDay'],
          lengthOfYear: element['lengthOfYear'],
          surfaceTemp: element['surfaceTemp'],
          radius: element['radius'],
          distanceFromSun: element['distanceFromSun'],
          mass: element['mass'],
          moons: element['moons'],
          mainColor: element['mainColor']));
    });

    data2.forEach((element) {
      news.add(AstronomicalNewsModel(
          title: element['title'],
          content: element['content'],
          date: element['date']));
    });

    data3.forEach((element) {
      popular.add(PopularModel(
          // id: element['id'],
          objectName: element['objectName'],
          objectPict: element['objectPict'],
          objectSub: element['objectSub'],
          description: element['description'],
          objectDetail: element['objectDetail'],
          objectDetail1: element['objectDetail1'],
          objectDetail2: element['objectDetail2'],
          objectDetail3: element['objectDetail3'],
          lengthOfDay: element['lengthOfDay'],
          lengthOfYear: element['lengthOfYear'],
          surfaceTemp: element['surfaceTemp'],
          distanceFromSun: element['distanceFromSun'],
          mass: element['mass'],
          moons: element['moons'],
          mainColor: element['mainColor']));
    });

    data4.forEach((element) {
      dwarf.add(DwarfModel(
          // id: element['id'],
          objectName: element['objectName'],
          objectPict: element['objectPict'],
          objectDetail: element['objectDetail'],
          rotationsub: element['rotationsub'],
          rotation: element['rotation'],
          lengthOfDay: element['lengthOfDay'],
          lengthOfYear: element['lengthOfYear'],
          surfaceTemp: element['surfaceTemp'],
          radius: element['radius'],
          distanceFromSun: element['distanceFromSun'],
          mass: element['mass'],
          moons: element['moons'],
          mainColor: element['mainColor']));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent, // 1
          elevation: 0, // 2
          title: Text(
            'S.T.A.R.S',
            style: GoogleFonts.orbitron(fontSize: 24),
          ),
          bottom: TabBar(
            onTap: (value) {},
            controller: _controller,
            tabs: list,
            labelPadding: const EdgeInsets.only(left: 5, right: 5),
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            all(),
            tabPlanet(spaces, _scrollController2),
            Center(
              child: Text('a'),
            ),
            Center(
              child: Text('a'),
            )
          ],
        ),
      ),
    );
  }
}
