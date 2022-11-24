import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_pas/commet_model.dart';
import 'package:project_pas/detailPopular.dart';
import 'package:project_pas/listcomet.dart';
import 'package:project_pas/listmoon.dart';
import 'package:project_pas/listplanet.dart';
import 'package:project_pas/moon_model.dart';
import 'package:project_pas/popular_space_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/space_model.dart';

import 'data_model.dart';

class all extends StatefulWidget {
  const all({Key? key}) : super(key: key);

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {
  List<PopularModel> popular = [];
  List<SpaceModel> spaces = [];
  List<CommetModel> commet = [];
  List<MoonModel> moon = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _buatlist();
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

    data5.forEach((element) {
      commet.add(CommetModel(
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

    data6.forEach((element) {
      moon.add(MoonModel(
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Container(
            alignment: Alignment.center,
            height: 340,
            width: double.maxFinite,
            child: CarouselSlider.builder(
              itemCount: popular.length,
              options: CarouselOptions(
                height: 400,

                // enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                // autoPlay: true,
              ),
              itemBuilder: (context, index, realIndex) {
                var data = popular[index];
                return InkWell(
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new detailPopular(
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
                          dfs: data.distanceFromSun.toString(),
                          ms: data.mass.toString(),
                          mns: data.moons.toString(),
                          mnc: data.mainColor!))),
                  child: Container(
                    width: 380,
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromRGBO(44, 51, 51, 1),
                      child: Container(
                          child: Stack(children: [
                        Container(
                            padding: EdgeInsets.all(20),
                            alignment: Alignment.topLeft,
                            width: 180,
                            height: 180,
                            child: Image.asset(data.objectPict.toString())),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(top: 56, right: 20),
                          child: new RotationTransition(
                            alignment: Alignment.topRight,
                            turns: new AlwaysStoppedAnimation(0 / 360),
                            child: new Text(
                              data.objectName.toString(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.orbitron(
                                fontSize: 20,
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
                          padding: const EdgeInsets.only(top: 55, right: 21),
                          child: new RotationTransition(
                            alignment: Alignment.topRight,
                            turns: new AlwaysStoppedAnimation(0 / 360),
                            child: Column(
                              children: [
                                new Text(
                                  data.objectName.toString(),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.orbitron(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  data.objectSub.toString(),
                                  style: GoogleFonts.orbitron(
                                      color: data.mainColor, fontSize: 8),
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
                                padding: EdgeInsets.only(top: 170),
                                child: Text(
                                  data.description.toString(),
                                  style: GoogleFonts.orbitron(
                                      color: Colors.white, fontSize: 12),
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
                                            data.objectDetail.toString(),
                                            style: GoogleFonts.orbitron(
                                                color: data.mainColor,
                                                fontSize: 11),
                                          ),
                                          Text(data.objectDetail1.toString(),
                                              style: GoogleFonts.orbitron(
                                                  color: Colors.white,
                                                  fontSize: 11))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 1.5,
                                      height: 30,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        children: [
                                          Text(
                                            data.objectDetail2.toString(),
                                            style: GoogleFonts.orbitron(
                                                color: data.mainColor,
                                                fontSize: 11),
                                          ),
                                          Text('TYPE',
                                              style: GoogleFonts.orbitron(
                                                  color: Colors.white,
                                                  fontSize: 11))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 1.5,
                                      height: 30,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        children: [
                                          Text(
                                            data.objectDetail3.toString(),
                                            style: GoogleFonts.orbitron(
                                                color: data.mainColor,
                                                fontSize: 11),
                                          ),
                                          Text('RADIUS',
                                              style: GoogleFonts.orbitron(
                                                  color: Colors.white,
                                                  fontSize: 11))
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
                      ])),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(child: Image.asset('assets/PlanetsGroup.png')),
          listplanet(spaces),
          SizedBox(
            height: 30,
          ),
          Container(child: Image.asset('assets/CometGroup.png')),
          listcomet(commet),
          Container(child: Image.asset('assets/MoonsGroup.png')),
          listmoon(moon),
        ]),
      ),
    );
  }
}
