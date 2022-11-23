import 'package:flutter/material.dart';
import 'package:project_pas/astronomicalnews_model.dart';
import 'package:google_fonts/google_fonts.dart';

Widget astronomical_news(List<AstronomicalNewsModel> news) {
  return Container(
    alignment: Alignment.center,
    height: 280,
    width: 370,
    child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: news.length,
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
                                    color: Color.fromRGBO(92, 128, 255, 1),
                                    fontSize: 20),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              data2.content.toString(),
                              style: GoogleFonts.orbitron(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          );
        })),
  );
}
