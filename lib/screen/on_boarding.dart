import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:maid/screen/login.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List skills = <String>[
    "Pembantu",
    "Babysitter",
    "Perawat lansia",
    "Pembersih",
    "Sopir",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.40),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildAnimatedText(),
                buildName(),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                        border: Border.all(color: whiteTextColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          " Mulai ",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: whiteTextColor,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: whiteTextColor,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildName() => Text(
        "semua ada disini",
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      );

  Widget buildAnimatedText() => AnimatedTextKit(
        animatedTexts: [
          for (var i = 0; i < skills.length; i++) buildText(i),
        ],
        repeatForever: true,
        pause: const Duration(milliseconds: 50),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      );

  buildText(int index) {
    return TypewriterAnimatedText(
      skills[index],
      textStyle: GoogleFonts.montserrat(
        textStyle: TextStyle(
          color: secondaryColor,
          fontWeight: FontWeight.w700,
          fontSize: 30,
        ),
      ),
      speed: const Duration(milliseconds: 170),
    );
  }
}
