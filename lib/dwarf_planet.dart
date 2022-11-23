import 'package:flutter/material.dart';
import 'package:project_pas/dwarf_planet_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailPlanet.dart';

Widget dwarf_planet(List<DwarfModel> dwarf) {
  return Container(
    alignment: Alignment.center,
    height: 350,
    width: 200,
    child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: dwarf.length,
        itemBuilder: (context, index) {
          var data = dwarf[index];
          return InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new detailPlanet(
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
                width: 350,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromRGBO(44, 51, 51, 1),
                  child: Container(
                      child: Stack(children: [
                    Container(
                        margin: EdgeInsets.only(left: 50),
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.topRight,
                        width: 300,
                        height: 300,
                        child: Image.asset(data.objectPict.toString())),
                    Padding(
                      padding: const EdgeInsets.only(top: 194, left: 42),
                      child: new RotationTransition(
                        alignment: Alignment.centerLeft,
                        turns: new AlwaysStoppedAnimation(-90 / 360),
                        child: new Text(
                          data.objectName.toString(),
                          style: GoogleFonts.orbitron(
                            fontSize: 35,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = data.mainColor!,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 195, left: 40),
                      child: new RotationTransition(
                        alignment: Alignment.centerLeft,
                        turns: new AlwaysStoppedAnimation(-90 / 360),
                        child: new Text(
                          data.objectName.toString(),
                          style: GoogleFonts.orbitron(
                              color: Colors.white, fontSize: 35),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 270, left: 30),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Planet Type: ',
                                style:
                                    GoogleFonts.orbitron(color: Colors.white),
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
                                style:
                                    GoogleFonts.orbitron(color: Colors.white),
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
  );
}
