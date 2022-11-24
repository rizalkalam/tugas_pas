import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'commet_model.dart';

Widget listcomet(List<CommetModel> commet) {
  return Container(
    alignment: Alignment.center,
    height: 300,
    width: double.maxFinite,
    child: CarouselSlider.builder(
      itemCount: commet.length,
      options: CarouselOptions(
        height: 220,

        // enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        // autoPlay: true,
      ),
      itemBuilder: (context, index, realIndex) {
        var data = commet[index];
        return InkWell(
          onTap: () {},
          child: Container(
            child: Card(
              color: Colors.black,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 120,
                    width: 270,
                    decoration: BoxDecoration(
                        border: Border.all(width: 9, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: new RotationTransition(
                      alignment: Alignment.bottomCenter,
                      turns: new AlwaysStoppedAnimation(0 / 360),
                      child: new Text(
                        data.objectName.toString(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.orbitron(
                          fontSize: 30,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = data.mainColor!,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(top: 160, right: 2),
                    child: new RotationTransition(
                      turns: new AlwaysStoppedAnimation(0 / 360),
                      child: Column(
                        children: [
                          new Text(
                            data.objectName.toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.orbitron(
                                color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        child: Container(
                          height: 180,
                          child: Image.asset(data.objectPict.toString()),
                        )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
