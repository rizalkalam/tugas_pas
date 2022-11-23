import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class detailPopular extends StatefulWidget {
  const detailPopular({
    Key? key,
    required this.name,
    required this.img,
    required this.obs,
    required this.desc,
    required this.obj,
    required this.obj1,
    required this.obj2,
    required this.obj3,
    required this.lod,
    required this.loy,
    required this.sT,
    required this.dfs,
    required this.ms,
    required this.mns,
    required this.mnc,
  }) : super(key: key);
  final String name;
  final String img;
  final String obs;
  final String desc;
  final String obj;
  final String obj1;
  final String obj2;
  final String obj3;
  final String lod;
  final String loy;
  final String sT;
  final String dfs;
  final String ms;
  final String mns;
  final Color mnc;

  @override
  State<detailPopular> createState() => _detailPopularState();
}

class _detailPopularState extends State<detailPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(44, 51, 51, 1),
        shadowColor: Colors.transparent, // 1
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(185),
                      bottomRight: Radius.circular(185)),
                  color: Color.fromRGBO(44, 51, 51, 1),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                          padding: EdgeInsets.only(top: 2.5, left: 2),
                          child: new Text(
                            widget.name,
                            style: GoogleFonts.orbitron(
                              fontSize: 35,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = widget.mnc,
                            ),
                          ),
                        ),
                        Text(widget.name,
                            style: GoogleFonts.orbitron(
                                color: Colors.white, fontSize: 35)),
                      ]),
                    ),
                    Image.asset(widget.img),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 375,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Length of Day: ',
                                style:
                                    GoogleFonts.orbitron(color: Colors.white)),
                            Container(
                              width: 205,
                              child: Text(widget.lod,
                                  style:
                                      GoogleFonts.orbitron(color: widget.mnc)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Length of Year: ',
                                style:
                                    GoogleFonts.orbitron(color: Colors.white)),
                            Container(
                              width: 205,
                              child: Text(
                                widget.loy,
                                style: GoogleFonts.orbitron(color: widget.mnc),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Planet Type: ',
                                style:
                                    GoogleFonts.orbitron(color: Colors.white)),
                            Container(
                              width: 205,
                              child: Text(
                                widget.obj2,
                                style: GoogleFonts.orbitron(color: widget.mnc),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Surface Temp: ',
                                style:
                                    GoogleFonts.orbitron(color: Colors.white)),
                            Container(
                              width: 205,
                              child: Text(
                                widget.sT,
                                style: GoogleFonts.orbitron(color: widget.mnc),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Radius: ',
                                style:
                                    GoogleFonts.orbitron(color: Colors.white)),
                            Container(
                              width: 265,
                              child: Text(
                                widget.obj3,
                                style: GoogleFonts.orbitron(color: widget.mnc),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text('Distance From Sun: ',
                                  style: GoogleFonts.orbitron(
                                      color: Colors.white)),
                            ),

                            Container(
                              width: 170,
                              child: Text(
                                widget.dfs,
                                // overflow: TextOverflow.clip,
                                style: GoogleFonts.orbitron(color: widget.mnc),
                              ),
                            ),

                            // SizedBox(
                            //   height: 3,
                            // ),
                            // Container(
                            //   padding: EdgeInsets.all(8.0),
                            //   child: Row(
                            //     children: [
                            //       Text('Mass: ',
                            //           style: GoogleFonts.orbitron(
                            //               color: Colors.white)),
                            //       Container(
                            //         width: 205,
                            //         child: Text(
                            //           widget.ms,
                            //           style: GoogleFonts.orbitron(
                            //               color:
                            //                   Color.fromRGBO(92, 128, 255, 1)),
                            //         ),
                            //       ),
                            //       SizedBox(
                            //         height: 3,
                            //       ),
                            //       Container(
                            //         padding: EdgeInsets.all(8.0),
                            //         child: Row(
                            //           children: [
                            //             Text('Moons: ',
                            //                 style: GoogleFonts.orbitron(
                            //                     color: Colors.white)),
                            //             Container(
                            //               width: 205,
                            //               child: Text(
                            //                 widget.mns,
                            //                 style: GoogleFonts.orbitron(
                            //                     color: Color.fromRGBO(
                            //                         92, 128, 255, 1)),
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
