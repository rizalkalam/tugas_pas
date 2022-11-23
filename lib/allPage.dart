import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_pas/astronomical_news.dart';
import 'package:project_pas/astronomicalnews_model.dart';
import 'package:project_pas/detailPlanet.dart';
import 'package:project_pas/detailPopular.dart';
import 'package:project_pas/dwarf_planet.dart';
import 'package:project_pas/dwarf_planet_model.dart';
import 'package:project_pas/planet_widget.dart';
import 'package:project_pas/popular_space_model.dart';
import 'package:project_pas/space_model.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data_model.dart';

class allPage extends StatefulWidget {
  const allPage({Key? key}) : super(key: key);

  @override
  State<allPage> createState() => _allPageState();
}

class _allPageState extends State<allPage> with TickerProviderStateMixin {
  List<SpaceModel> spaces = [];
  List<AstronomicalNewsModel> news = [];
  List<PopularModel> popular = [];
  List<DwarfModel> dwarf = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatlist();

    super.initState();
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
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent, // 1
          elevation: 0, // 2
          title: Text(
            'S.T.A.R.S',
            style: GoogleFonts.orbitron(fontSize: 24),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Text(
                        'ALL',
                        style: GoogleFonts.orbitron(),
                      ),
                      Text('PLANETS', style: GoogleFonts.orbitron()),
                      Text('DWARF PLANET', style: GoogleFonts.orbitron()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.maxFinite,
                height: 380,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 350,
                      width: 200,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: popular.length,
                          itemBuilder: (context, index) {
                            var data = popular[index];
                            return InkWell(
                              onTap: () => Navigator.of(context).push(
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          new detailPopular(
                                            name: data.objectName.toString(),
                                            img: data.objectPict.toString(),
                                            obs: data.objectSub.toString(),
                                            desc: data.description.toString(),
                                            obj: data.objectDetail.toString(),
                                            obj1: data.objectDetail1.toString(),
                                            obj2: data.objectDetail2.toString(),
                                            obj3: data.objectDetail3.toString(),
                                            lod: data.lengthOfDay.toString(),
                                            loy: data.lengthOfYear.toString(),
                                            sT: data.surfaceTemp.toString(),
                                            dfs:
                                                data.distanceFromSun.toString(),
                                            ms: data.mass.toString(),
                                            mns: data.moons.toString(),
                                            mnc: data.mainColor!,
                                          ))),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 350,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Color.fromRGBO(44, 51, 51, 1),
                                    child: Container(
                                        child: Stack(children: [
                                      Container(
                                          padding: EdgeInsets.all(20),
                                          alignment: Alignment.topLeft,
                                          width: 200,
                                          height: 200,
                                          child: Image.asset(
                                              data.objectPict.toString())),
                                      Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.only(
                                            top: 56, right: 20),
                                        child: new RotationTransition(
                                          alignment: Alignment.topRight,
                                          turns: new AlwaysStoppedAnimation(
                                              0 / 360),
                                          child: new Text(
                                            data.objectName.toString(),
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.orbitron(
                                              fontSize: 29,
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth = 1
                                                ..color = data.mainColor!,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.only(
                                            top: 55, right: 21),
                                        child: new RotationTransition(
                                          alignment: Alignment.topRight,
                                          turns: new AlwaysStoppedAnimation(
                                              0 / 360),
                                          child: Column(
                                            children: [
                                              new Text(
                                                data.objectName.toString(),
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.orbitron(
                                                    color: Colors.white,
                                                    fontSize: 29),
                                              ),
                                              Text(
                                                data.objectSub.toString(),
                                                style: GoogleFonts.orbitron(
                                                    color: data.mainColor,
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 170),
                                              child: Text(
                                                data.description.toString(),
                                                style: GoogleFonts.orbitron(
                                                    color: Colors.white,
                                                    fontSize: 13),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(12),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          data.objectDetail
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .orbitron(
                                                                  color: data
                                                                      .mainColor),
                                                        ),
                                                        Text(
                                                            data.objectDetail1
                                                                .toString(),
                                                            style: GoogleFonts
                                                                .orbitron(
                                                                    color: Colors
                                                                        .white))
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(12),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          data.objectDetail2
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .orbitron(
                                                                  color: data
                                                                      .mainColor),
                                                        ),
                                                        Text('TYPE',
                                                            style: GoogleFonts
                                                                .orbitron(
                                                                    color: Colors
                                                                        .white))
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(12),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          data.objectDetail3
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .orbitron(
                                                                  color: data
                                                                      .mainColor),
                                                        ),
                                                        Text('RADIUS',
                                                            style: GoogleFonts
                                                                .orbitron(
                                                                    color: Colors
                                                                        .white))
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(12),
                                        margin: EdgeInsets.only(left: 60),
                                        alignment: Alignment.bottomCenter,
                                        child: Row(
                                          children: [
                                            Text(
                                              'EXPLORE',
                                              style: GoogleFonts.orbitron(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 90,
                                            ),
                                            Image.asset('assets/NextButton.png')
                                          ],
                                        ),
                                      )
                                    ])),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    tabPlanet(spaces),
                    dwarf_planet(dwarf)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text('astronomical news',
                    style: GoogleFonts.orbitron(
                        color: Colors.white, fontSize: 20)),
              ),
              SizedBox(
                height: 5,
              ),
              astronomical_news(news),
            ],
          ),
        ));
  }
}
