import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:maid/model/category.dart';
import 'package:flutter/material.dart';
import 'package:maid/screen/details_screen.dart';
import 'package:maid/screen/drawer.dart';

class Home extends StatelessWidget {
  String emailData;
  Home(this.emailData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(emailData),
      body: Stack(
        children: [
          Container(
            height: 240,
            decoration: BoxDecoration(
              color: primaryColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          padding: const EdgeInsets.all(0.0),
                          alignment: Alignment.centerLeft,
                          splashRadius: 1,
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu_rounded,
                            size: 30,
                          ),
                          color: whiteTextColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Selamat Datang,",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: whiteTextColor,
                      ),
                    ),
                  ),
                  Text(
                    "Ada yang bisa kami bantu?",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: whiteTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F7),
                      borderRadius: BorderRadius.circular(29.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: TextField(
                      textInputAction: TextInputAction.go,
                      cursorColor: secondaryColor,
                      onSubmitted: (value) {
                        if (value.toLowerCase().contains("pembantu")) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(emailData,
                                  categories[0].name, categories[0].image),
                            ),
                          );
                        } else if (value.toLowerCase().contains("babysitter")) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(emailData,
                                  categories[1].name, categories[1].image),
                            ),
                          );
                        } else if (value
                            .toLowerCase()
                            .contains("perawat lansia")) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(emailData,
                                  categories[2].name, categories[2].image),
                            ),
                          );
                        } else if (value.toLowerCase().contains("pembersih")) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(emailData,
                                  categories[3].name, categories[3].image),
                            ),
                          );
                        } else if (value.toLowerCase().contains("sopir")) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(emailData,
                                  categories[4].name, categories[4].image),
                            ),
                          );
                        } else {
                          AlertDialog alert = AlertDialog(
                            backgroundColor: primaryColor,
                            title: Text(
                              "Hasil tidak ditemukan",
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
                            ],
                          );

                          showDialog(
                              context: context, builder: (context) => alert);
                        }
                        ;
                      },
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: greyTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      decoration: InputDecoration(
                        hintText: "Cari Kategori",
                        icon: Icon(
                          Icons.manage_search_rounded,
                          size: 30,
                          color: greyTextColor,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kategori",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: blackTextColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      padding: EdgeInsets.all(0),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          hoverColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                    emailData,
                                    categories[index].name,
                                    categories[index].image),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            height: index.isEven ? 200 : 240,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage(categories[index].image),
                                alignment: Alignment.bottomRight,
                                //fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  categories[index].name,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: whiteTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
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
