import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maid/helpers/color.dart';
import 'package:flutter/material.dart';
import 'package:maid/model/category.dart';
import 'package:maid/screen/details_client_screen.dart';
import 'package:maid/screen/drawer.dart';
import 'package:maid/screen/home.dart';

class DetailsScreen extends StatelessWidget {
  String emailData;
  String categoryName;
  String categoryImage;
  DetailsScreen(this.emailData, this.categoryName, this.categoryImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(emailData),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
            image: AssetImage("$categoryImage"),
            alignment: Alignment.topRight,
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
                  SizedBox(height: 44),
                  Text(
                    "Kategori:",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: whiteTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    "$categoryName",
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
            SizedBox(height: 25),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hasil",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: blackTextColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          buildResult(),
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

  Widget buildResult() {
    if (categoryName.contains("Pembantu")) {
      return Expanded(
        child: MasonryGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(0),
          itemCount: pembantuClients.length,
          itemBuilder: (context, index) {
            return InkWell(
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsClientScreen(
                      emailData,
                      categoryName,
                      categoryImage,
                      pembantuClients[index].name,
                      pembantuClients[index].age,
                      pembantuClients[index].email,
                      pembantuClients[index].gender,
                      pembantuClients[index].category,
                      pembantuClients[index].location,
                      pembantuClients[index].type,
                      pembantuClients[index].requestSalary,
                      pembantuClients[index].experience,
                      pembantuClients[index].rating,
                      pembantuClients[index].photo,
                    ),
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
                    image: AssetImage(pembantuClients[index].photo),
                    alignment: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pembantuClients[index].name,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: whiteTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          size: 15,
                          color: whiteTextColor,
                        ),
                        Text(
                          ' ${pembantuClients[index].rating}',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: whiteTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }
    if (categoryName.contains("Babysitter")) {
      return Expanded(
        child: MasonryGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(0),
          itemCount: babysitterClients.length,
          itemBuilder: (context, index) {
            return InkWell(
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsClientScreen(
                      emailData,
                      categoryName,
                      categoryImage,
                      babysitterClients[index].name,
                      babysitterClients[index].age,
                      babysitterClients[index].email,
                      babysitterClients[index].gender,
                      babysitterClients[index].category,
                      babysitterClients[index].location,
                      babysitterClients[index].type,
                      babysitterClients[index].requestSalary,
                      babysitterClients[index].experience,
                      babysitterClients[index].rating,
                      babysitterClients[index].photo,
                    ),
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
                    image: AssetImage(babysitterClients[index].photo),
                    alignment: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      babysitterClients[index].name,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: whiteTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: whiteTextColor,
                        ),
                        Text(
                          ' ${babysitterClients[index].rating}',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: whiteTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }
    if (categoryName.contains("Perawat Lansia")) {
      return Expanded(
        child: MasonryGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(0),
          itemCount: perawatLansiaClients.length,
          itemBuilder: (context, index) {
            return InkWell(
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsClientScreen(
                      emailData,
                      categoryName,
                      categoryImage,
                      perawatLansiaClients[index].name,
                      perawatLansiaClients[index].age,
                      perawatLansiaClients[index].email,
                      perawatLansiaClients[index].gender,
                      perawatLansiaClients[index].category,
                      perawatLansiaClients[index].location,
                      perawatLansiaClients[index].type,
                      perawatLansiaClients[index].requestSalary,
                      perawatLansiaClients[index].experience,
                      perawatLansiaClients[index].rating,
                      perawatLansiaClients[index].photo,
                    ),
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
                    image: AssetImage(perawatLansiaClients[index].photo),
                    alignment: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      perawatLansiaClients[index].name,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: whiteTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: whiteTextColor,
                        ),
                        Text(
                          ' ${perawatLansiaClients[index].rating}',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: whiteTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }
    if (categoryName.contains("Pembersih")) {
      return Expanded(
        child: MasonryGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(0),
          itemCount: pembersihClients.length,
          itemBuilder: (context, index) {
            return InkWell(
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsClientScreen(
                      emailData,
                      categoryName,
                      categoryImage,
                      pembersihClients[index].name,
                      pembersihClients[index].age,
                      pembersihClients[index].email,
                      pembersihClients[index].gender,
                      pembersihClients[index].category,
                      pembersihClients[index].location,
                      pembersihClients[index].type,
                      pembersihClients[index].requestSalary,
                      pembersihClients[index].experience,
                      pembersihClients[index].rating,
                      pembersihClients[index].photo,
                    ),
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
                    image: AssetImage(pembersihClients[index].photo),
                    alignment: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pembersihClients[index].name,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: whiteTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: whiteTextColor,
                        ),
                        Text(
                          ' ${pembersihClients[index].rating}',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: whiteTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }
    if (categoryName.contains("Sopir")) {
      return Expanded(
        child: MasonryGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(0),
          itemCount: sopirClients.length,
          itemBuilder: (context, index) {
            return InkWell(
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsClientScreen(
                      emailData,
                      categoryName,
                      categoryImage,
                      sopirClients[index].name,
                      sopirClients[index].age,
                      sopirClients[index].email,
                      sopirClients[index].gender,
                      sopirClients[index].category,
                      sopirClients[index].location,
                      sopirClients[index].type,
                      sopirClients[index].requestSalary,
                      sopirClients[index].experience,
                      sopirClients[index].rating,
                      sopirClients[index].photo,
                    ),
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
                    image: AssetImage(sopirClients[index].photo),
                    alignment: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sopirClients[index].name,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: whiteTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: whiteTextColor,
                        ),
                        Text(
                          ' ${sopirClients[index].rating}',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: whiteTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }
    return Container(
      margin: EdgeInsets.only(top: 130.0),
      child: Center(
        child: CircularProgressIndicator(
          color: primaryColor,
        ),
      ),
    );
  }
}
