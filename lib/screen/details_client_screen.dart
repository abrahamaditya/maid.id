import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:flutter/material.dart';
import 'package:maid/screen/details_screen.dart';
import 'package:maid/screen/drawer.dart';
import 'package:maid/screen/form.dart';

class DetailsClientScreen extends StatelessWidget {
  String emailData;
  String categoryName;
  String categoryImage;
  String clientName;
  String clientAge;
  String clientEmail;
  String clientGender;
  String clientCategory;
  String clientLocation;
  String clientType;
  String clientRequestSalary;
  String clientExperience;
  String clientRating;
  String clientPhoto;

  DetailsClientScreen(
    this.emailData,
    this.categoryName,
    this.categoryImage,
    this.clientName,
    this.clientAge,
    this.clientEmail,
    this.clientGender,
    this.clientCategory,
    this.clientLocation,
    this.clientType,
    this.clientRequestSalary,
    this.clientExperience,
    this.clientRating,
    this.clientPhoto,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(emailData),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
            image: AssetImage("$clientPhoto"),
            alignment: Alignment.topCenter,
            scale: 1,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.only(top: 35.0),
                        alignment: Alignment.centerLeft,
                        splashRadius: 1,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      emailData, categoryName, categoryImage)));
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                        ),
                        color: whiteTextColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 160),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 4,
                      blurRadius: 8,
                      offset: Offset(0, -2.15),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 14, left: 180, right: 180),
                      height: 4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: grey,
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 50,
                            color: blackTextColor.withOpacity(.1),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "$clientName",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: blackTextColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 0),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                size: 23,
                                color: secondaryColor,
                              ),
                              Text(
                                ' ${clientRating}',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                "Umur                   ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "$clientAge",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Jenis kelamin    ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "$clientGender",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Posisi                   ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "$clientCategory",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Lokasi                  ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "$clientLocation",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Tipe                      ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "$clientType",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Pengalaman      ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "$clientExperience",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Permintaan        ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                "$clientRequestSalary",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "upah",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: secondaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 18),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FormEmail(
                                            emailData,
                                            categoryName,
                                            categoryImage,
                                            clientName,
                                            clientAge,
                                            clientEmail,
                                            clientGender,
                                            clientCategory,
                                            clientLocation,
                                            clientType,
                                            clientRequestSalary,
                                            clientExperience,
                                            clientRating,
                                            clientPhoto,
                                          )));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.07,
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(7))),
                              child: Center(
                                child: Text(
                                  "Hubungi",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
