import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:flutter/material.dart';
import 'package:maid/screen/home.dart';
import 'package:maid/screen/login.dart';

class Profile extends StatelessWidget {
  String emailData;
  Profile(this.emailData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: primaryColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        alignment: Alignment.centerLeft,
                        splashRadius: 1,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home(emailData)));
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                        ),
                        color: whiteTextColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 95),
                  Text(
                    "Profil Akun",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: whiteTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: greyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          "Email",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: whiteTextColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: TextFormField(
                            readOnly: true,
                            initialValue: '$emailData',
                            cursorColor: secondaryColor,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: whiteTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            decoration: InputDecoration(
                              fillColor: whiteTextColor,
                              hintStyle: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: greyTextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 23.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(7))),
                          child: Center(
                            child: Text(
                              "Keluar",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: whiteTextColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
