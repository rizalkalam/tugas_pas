import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/detailCommet.dart';

import 'astronomicalnews_model.dart';
import 'commet_model.dart';

Widget tabCommet(List<CommetModel> commet, ScrollController _scrollController2,
    List<AstronomicalNewsModel> news) {
  return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Container(
            alignment: Alignment.center,
            height: 350,
            width: double.maxFinite,
            child: Container(
              child: Scrollbar(
                isAlwaysShown: true,
                controller: _scrollController2,
                child: ListView.builder(
                    controller: _scrollController2,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: commet.length,
                    itemBuilder: (context, index) {
                      var data = commet[index];
                      return InkWell(
                        onTap: () => Navigator.of(context).push(
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new detailCommet(
                                        name: data.objectName.toString(),
                                        img: data.objectPict.toString(),
                                        obj: data.objectDetail.toString(),
                                        lod: data.lengthOfDay.toString(),
                                        loy: data.lengthOfYear.toString(),
                                        sT: data.surfaceTemp.toString(),
                                        ra: data.radius.toString(),
                                        dfs: data.distanceFromSun.toString(),
                                        ms: data.mass.toString(),
                                        mns: data.moons.toString(),
                                        mnc: data.mainColor!))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 300,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromRGBO(44, 51, 51, 1),
                              child: Container(
                                  child: Stack(children: [
                                Container(
                                    padding: EdgeInsets.all(35),
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      data.objectPict.toString(),
                                      fit: BoxFit.fill,
                                      width: 160,
                                      height: 160,
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 220, left: 42),
                                  child: new RotationTransition(
                                    alignment: Alignment.centerLeft,
                                    turns:
                                        new AlwaysStoppedAnimation(-90 / 360),
                                    child: new Text(
                                      data.objectName.toString(),
                                      style: GoogleFonts.orbitron(
                                        fontSize: 25,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 1
                                          ..color = data.mainColor!,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 218, left: 40),
                                  child: new RotationTransition(
                                    alignment: Alignment.centerLeft,
                                    turns:
                                        new AlwaysStoppedAnimation(-90 / 360),
                                    child: new Text(
                                      data.objectName.toString(),
                                      style: GoogleFonts.orbitron(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 270, left: 30),
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Planet Type: ',
                                            style: GoogleFonts.orbitron(
                                                color: Colors.white),
                                          ),
                                          Text(data.objectDetail.toString(),
                                              style: GoogleFonts.orbitron(
                                                color: data.mainColor!,
                                              ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            data.rotationsub.toString(),
                                            style: GoogleFonts.orbitron(
                                                color: Colors.white),
                                          ),
                                          Text(data.rotation.toString(),
                                              style: GoogleFonts.orbitron(
                                                color: data.mainColor!,
                                              ))
                                        ],
                                      ),
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
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: news.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                var data2 = news[index];
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                        color: Color.fromRGBO(44, 51, 51, 1),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      data2.title.toString(),
                                      style: GoogleFonts.orbitron(
                                          color:
                                              Color.fromRGBO(92, 128, 255, 1),
                                          fontSize: 20),
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Text(
                                    data2.content.toString(),
                                    style: GoogleFonts.poppins(
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                );
              })),
        )
      ]));
}
