import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:maid/screen/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmationPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              //     color: whiteshade,
              //     borderRadius: const BorderRadius.only(
              //         topLeft: Radius.circular(45),
              //         topRight: Radius.circular(45))),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Daftar",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: whiteTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InputFieldEmail(
                    headerText: "Email",
                    emailController: _emailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputFieldSandi(
                    headerText: "Sandi",
                    passwordController: _passwordController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputFieldKonfirmasiSandi(
                    headerText: "Konfirmasi Sandi",
                    confirmationPasswordController:
                        _confirmationPasswordController,
                  ),
                  SizedBox(
                    height: 23.0,
                  ),
                  InkWell(
                    onTap: () {
                      validation(
                        context,
                        _emailController.text,
                        _passwordController.text,
                        _confirmationPasswordController.text,
                      );
                      print("Sign up click");
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
                          "Daftar",
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
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: Text.rich(
                      TextSpan(
                        text: "Sudah punya akun? ",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: whiteTextColor,
                            fontSize: 16,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: "Masuk",
                            style:
                                TextStyle(color: secondaryColor, fontSize: 16),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                                print("Sign Up click");
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class InputFieldEmail extends StatelessWidget {
  String headerText;
  String? placeholder;
  TextEditingController emailController;

  InputFieldEmail(
      {Key? key,
      required this.headerText,
      this.placeholder,
      required this.emailController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
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
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextFormField(
              controller: emailController,
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

class InputFieldSandi extends StatefulWidget {
  String headerText;
  String? placeholder;
  TextEditingController passwordController;

  InputFieldSandi(
      {Key? key,
      required this.headerText,
      this.placeholder,
      required this.passwordController})
      : super(key: key);

  @override
  State<InputFieldSandi> createState() => _InputFieldSandiState();
}

class _InputFieldSandiState extends State<InputFieldSandi> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 10,
          ),
          child: Text(
            widget.headerText,
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
              controller: widget.passwordController,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: whiteTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              cursorColor: secondaryColor,
              obscureText: _visible,
              decoration: InputDecoration(
                hintText: widget.placeholder,
                hintStyle: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: greyTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                border: InputBorder.none,
                suffixIcon: IconButton(
                  color: greyTextColor,
                  icon:
                      Icon(_visible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        _visible = !_visible;
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class InputFieldKonfirmasiSandi extends StatefulWidget {
  String headerText;
  String? placeholder;
  TextEditingController confirmationPasswordController;

  InputFieldKonfirmasiSandi(
      {Key? key,
      required this.headerText,
      this.placeholder,
      required this.confirmationPasswordController})
      : super(key: key);

  @override
  State<InputFieldKonfirmasiSandi> createState() =>
      _InputFieldKonfirmasiSandiState();
}

class _InputFieldKonfirmasiSandiState extends State<InputFieldKonfirmasiSandi> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 10,
          ),
          child: Text(
            widget.headerText,
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
              controller: widget.confirmationPasswordController,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: whiteTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              cursorColor: secondaryColor,
              obscureText: _visible,
              decoration: InputDecoration(
                hintText: widget.placeholder,
                hintStyle: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: greyTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                border: InputBorder.none,
                suffixIcon: IconButton(
                  color: greyTextColor,
                  icon:
                      Icon(_visible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        _visible = !_visible;
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void validation(BuildContext context, String email, String password,
    String confirmationPassword) {
  if (email.isEmpty || password.isEmpty || confirmationPassword.isEmpty) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        "Email dan sandi harus diisi",
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
    return;
  } else if (email.contains("@") == false) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        "Email tidak valid",
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
    return;
  } else if (confirmationPassword.contains(password) == false) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        "Sandi salah",
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
    return;
  }

  AlertDialog alert = AlertDialog(
    backgroundColor: primaryColor,
    title: Text(
      "Berhasil didaftarkan!",
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
            'Masuk',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login())),
        ),
      ),
    ],
  );

  showDialog(context: context, builder: (context) => alert);
  return;
}
