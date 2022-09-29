import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:maid/screen/login.dart';
import 'package:maid/screen/profile.dart';

class NavDrawer extends StatelessWidget {
  String emailData;
  NavDrawer(this.emailData);

  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final nameTemp = emailData;
    List temp = nameTemp.split("@");
    String nameTemp2 = temp.elementAt(0);
    String name = nameTemp2[0].toUpperCase() + nameTemp2.substring(1);
    String email = emailData;
    return Drawer(
      child: Material(
        color: primaryColor,
        child: ListView(
          children: [
            buildHeader(
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Profile(emailData),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 8),
                  buildMenuItem(
                    text: 'Keluar',
                    icon: Icons.logout_rounded,
                    onClicked: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login())),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: greyTextColor,
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: whiteTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: whiteTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: whiteTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      onTap: onClicked,
    );
  }

  // void selectedItem(BuildContext context, int index) {
  //   Navigator.of(context).pop();

  //   switch (index) {
  //     case 0:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => PeoplePage(),
  //       ));
  //       break;
  //     case 1:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => FavouritesPage(),
  //       ));
  //       break;
  //   }
  // }
}
