import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:maid/model/account.dart';
import 'package:maid/screen/home.dart';
import 'package:maid/screen/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String? emailData;

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
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Masuk",
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
                      headerText: "Email", emailController: _emailController),
                  const SizedBox(
                    height: 10,
                  ),
                  InputFieldPassword(
                      headerText: "Sandi",
                      passwordController: _passwordController),
                  SizedBox(
                    height: 23.0,
                  ),
                  InkWell(
                    onTap: () {
                      bool flag = validation(context, _emailController.text,
                          _passwordController.text);
                      if (flag) {
                        emailData = _emailController.text;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home(emailData!)));
                      }
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
                          "Masuk",
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
                        text: "Belum punya akun? ",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: whiteTextColor,
                            fontSize: 16,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: "Daftar",
                            style:
                                TextStyle(color: secondaryColor, fontSize: 16),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
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

class InputFieldPassword extends StatefulWidget {
  String headerText;
  String? placeholder;
  TextEditingController passwordController;

  InputFieldPassword(
      {Key? key,
      required this.headerText,
      this.placeholder,
      required this.passwordController})
      : super(key: key);

  @override
  State<InputFieldPassword> createState() => _InputFieldPasswordState();
}

class _InputFieldPasswordState extends State<InputFieldPassword> {
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

bool validation(BuildContext context, String email, String password) {
  if (email.isEmpty || password.isEmpty) {
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
    return false;
  } else if (accounts.any((element) => element.email.contains(email)) ==
      false) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        "Email salah atau belum terdaftar",
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
  } else if (accounts.any((element) => element.password.contains(password)) ==
      false) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        "Password salah",
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
  }
  return true;
}
