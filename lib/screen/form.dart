import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:flutter/material.dart';
import 'package:maid/screen/details_client_screen.dart';
import 'package:maid/screen/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:maid/screen/home.dart';

class FormEmail extends StatefulWidget {
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

  FormEmail(
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
  _FormEmailState createState() => _FormEmailState();
}

class _FormEmailState extends State<FormEmail> {
  TextEditingController _subjekController = TextEditingController();
  TextEditingController _pesanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: NavDrawer(widget.emailData),
      body: Container(
        color: primaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                                  builder: (context) => DetailsClientScreen(
                                        widget.emailData,
                                        widget.categoryName,
                                        widget.categoryImage,
                                        widget.clientName,
                                        widget.clientAge,
                                        widget.clientEmail,
                                        widget.clientGender,
                                        widget.clientCategory,
                                        widget.clientLocation,
                                        widget.clientType,
                                        widget.clientRequestSalary,
                                        widget.clientExperience,
                                        widget.clientRating,
                                        widget.clientPhoto,
                                      )));
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                        ),
                        color: whiteTextColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Text(
                    "Form Email",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: whiteTextColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InputFieldKepada(
                      headerText: "Kepada", kesiapa: widget.clientName),
                  const SizedBox(
                    height: 10,
                  ),
                  InputField(
                      headerText: "Subjek", controller: _subjekController),
                  const SizedBox(
                    height: 10,
                  ),
                  InputFieldMessage(
                      headerText: "Pesan", controller: _pesanController),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              bool flag = validation(
                                  context,
                                  _subjekController.text,
                                  _pesanController.text,
                                  widget.emailData);
                              if (flag) {
                                sendEmail(
                                    email_penerima: widget.clientEmail,
                                    email_pengirim: widget.emailData,
                                    subjek: _subjekController.text,
                                    pesan: _pesanController.text);
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.07,
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
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

  Future sendEmail({
    required String email_penerima,
    required String email_pengirim,
    required String subjek,
    required String pesan,
  }) async {
    final serviceId = 'service_nfo8whh';
    final templateId = 'template_oaq2z3a';
    final userId = 'YbXViPb9AWQXHK64P';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'email_penerima': email_penerima,
            'email_pengirim': email_pengirim,
            'subjek': subjek,
            'pesan': pesan,
          }
        }));
    print(response.body);
  }
}

class InputField extends StatelessWidget {
  String headerText;
  String? placeholder;
  TextEditingController controller;

  InputField({
    Key? key,
    required this.headerText,
    this.placeholder,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Text(
            headerText,
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
          decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextFormField(
              controller: controller,
              cursorColor: secondaryColor,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: whiteTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              decoration: InputDecoration(
                hintText: placeholder,
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
      ],
    );
  }
}

class InputFieldKepada extends StatelessWidget {
  String headerText;
  String? placeholder;
  String kesiapa;

  InputFieldKepada({
    Key? key,
    required this.headerText,
    this.placeholder,
    required this.kesiapa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Text(
            headerText,
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
          decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextFormField(
              readOnly: true,
              initialValue: '$kesiapa',
              cursorColor: secondaryColor,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: whiteTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              decoration: InputDecoration(
                hintText: placeholder,
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
      ],
    );
  }
}

class InputFieldMessage extends StatelessWidget {
  String headerText;
  String? placeholder;
  TextEditingController controller;

  InputFieldMessage({
    Key? key,
    required this.headerText,
    this.placeholder,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Text(
            headerText,
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
          constraints: BoxConstraints(maxHeight: 270),
          decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SingleChildScrollView(
              child: TextFormField(
                controller: controller,
                maxLines: null,
                cursorColor: secondaryColor,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: whiteTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                decoration: InputDecoration(
                  hintText: placeholder,
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
        ),
      ],
    );
  }
}

bool validation(
    BuildContext context, String subjek, String pesan, String emailData) {
  if (subjek.isEmpty || pesan.isEmpty) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        "Subjek dan pesan harus diisi",
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 214, 40, 28),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return false;
  } else {
    AlertDialog alert = AlertDialog(
      backgroundColor: primaryColor,
      title: Text(
        "Email berhasil dikirimkan!",
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        ),
      ),
      actions: [
        Container(
          child: TextButton(
            style: TextButton.styleFrom(
              primary: secondaryColor,
            ),
            child: Text(
              'Kembali',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: secondaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 12),
          child: TextButton(
            style: TextButton.styleFrom(
              primary: secondaryColor,
            ),
            child: Text(
              'Halaman Utama',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: secondaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Home(emailData))),
          ),
        ),
      ],
    );

    showDialog(context: context, builder: (context) => alert);
    return true;
  }
}
