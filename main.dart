import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double rating = 0;
  TextEditingController controller = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_outlined, color: Colors.black),
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  width: 50,
                  height: 50,
                  child: Image(image: AssetImage("assets/timun.png")),
                ),
                SizedBox(width: 10),
                Container(
                  width: 230,
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Text(
                      "Resin Bening 108 1 KG + Katalis 20 gram TERMURAH",
                      style: GoogleFonts.poppins()
                          .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                      maxLines: 2),
                ),
              ]),
              SizedBox(height: 20),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                        initialRating: rating,
                        minRating: 1,
                        itemSize: 50,
                        itemPadding: EdgeInsets.symmetric(horizontal: 10),
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: Colors.amber),
                        updateOnDrag: true,
                        onRatingUpdate: (rating) => setState(() {
                          this.rating = rating;
                        }),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Divider(
                            height: 15,
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                          ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                alignment: Alignment.centerLeft,
                child: Column(children: [
                  Container(
                    child: Text("Apa yang bikin kamu puas?",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        maxLines: 2),
                  ),
                ]),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.open_in_full_outlined,
                          color: Colors.black45,
                        ),
                        hintText:
                            "Yuk, ceritain kepuasan tentang kualitas barang & pelayanan penjual.",
                        hintStyle: GoogleFonts.poppins().copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(),
                      ),
                      controller: controller,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 50,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black26),
                        child: Center(
                            child: Text("Kuat & Kokoh",
                                style: (GoogleFonts.poppins().copyWith(
                                    fontSize: 12, color: Colors.white)))),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 175,
                        height: 22,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black26),
                        child: Center(
                            child: Text("Packaging aman dan rapih",
                                style: (GoogleFonts.poppins().copyWith(
                                    fontSize: 12, color: Colors.white)))),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 250,
                        height: 22,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black26),
                        child: Center(
                            child: Text("Barang sesuai dengan gambar",
                                style: (GoogleFonts.poppins().copyWith(
                                    fontSize: 15, color: Colors.white)))),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 10),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.photo_camera_outlined,
                  ),
                  Text(" Kasih liyat foto barang",
                      style: (GoogleFonts.poppins()
                          .copyWith(fontSize: 13, color: Colors.black))),
                ]),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black45),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text("Sembunyikan namamu",
                        style: (GoogleFonts.poppins()
                            .copyWith(fontSize: 13, color: Colors.black))),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Column(
                children: [
                  Divider(
                    height: 15,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      width: 240,
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.black26,
                        valueColor: AlwaysStoppedAnimation(Colors.green),
                        minHeight: 5,
                        value: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          width: 100,
                          height: 40,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text("Kirim",
                                style: GoogleFonts.poppins().copyWith(
                                    color: "FFFFFF".toColor(),
                                    fontWeight: FontWeight.bold)),
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Text("Makin lengkap, makin mantap ")),
                    Icon(Icons.thumb_up, size: 18),
                  ],
                ),
              ),
              // Container(
              //   alignment: Alignment.bottomRight,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Container(
              //         width: 100,
              //         height: 30,
              //         child: FlatButton(
              //           onPressed: () {},
              //           child: Text("Kirim",
              //               style: GoogleFonts.poppins().copyWith(
              //                   color: "FFFFFF".toColor(),
              //                   fontWeight: FontWeight.bold)),
              //           color: "15BD11".toColor(),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ]),
          ),
        ),
      ]),
    );
  }
}
