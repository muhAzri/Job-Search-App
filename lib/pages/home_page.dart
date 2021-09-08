import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_search/models/nearby.dart';
import 'package:flutter_job_search/models/reccomend.dart';
import 'package:flutter_job_search/theme.dart';
import 'package:flutter_job_search/widget/bottom_navbar.dart';
import 'package:flutter_job_search/widget/nearby_card.dart';
import 'package:flutter_job_search/widget/reccomend_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Container(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 53,
                    ),
                    Text(
                      'Hello,',
                      style: greyTextSyle.copyWith(
                          fontWeight: semiBold, fontSize: 20),
                    ),
                    Text(
                      'Azri!',
                      style: blackTextSyle.copyWith(
                          fontWeight: extraBold, fontSize: 30),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 284,
                          height: 40,
                          child: CupertinoSearchTextField(
                            backgroundColor: lightGreyColor,
                            placeholder: 'What are you looking for?',
                            placeholderStyle:
                                greyTextSyle.copyWith(fontWeight: semiBold),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset(
                          'assets/filter_search_icon.png',
                          width: 43,
                          height: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      'Recommended for you',
                      style: blackTextSyle.copyWith(
                          fontWeight: semiBold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ReccomendedCard(Reccomend(
                          id: 1,
                          name: 'Google',
                          imageUrl: 'assets/company1.png',
                          jobTitle: "Website Developer",
                          salary: '6.500',
                          city: 'Jakarta',
                          country: 'Indonesia')),
                      SizedBox(
                        width: 24,
                      ),
                      ReccomendedCard(Reccomend(
                          id: 2,
                          name: 'Bukalapak',
                          imageUrl: 'assets/company2.png',
                          jobTitle: "Social Media Marketing",
                          salary: '4.300',
                          city: 'Bandung',
                          country: 'Indonesia'))
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Nearby job',
                  style: blackTextSyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 18,
                ),
                NearbyCard(Nearby(
                    id: 1,
                    name: "Kopi Lain Hati",
                    imageUrl: "assets/company3.png",
                    jobTitle: 'Coffee Barista',
                    salary: '1.750',
                    distance: 120,
                    isFulltime: false,
                    isPanjang: false,
                    isPendek: false)),
                SizedBox(
                  height: 24,
                ),
                NearbyCard(Nearby(
                    id: 2,
                    name: "Oti Fried Chicken",
                    imageUrl: "assets/company4.png",
                    jobTitle: 'Kitchener',
                    salary: '3.350',
                    distance: 310,
                    isFulltime: true,
                    isPanjang: true,
                    isPendek: false)),
                SizedBox(
                  height: 24,
                ),
                NearbyCard(Nearby(
                    id: 3,
                    name: "Adidas",
                    imageUrl: "assets/company5.png",
                    jobTitle: 'Cashier',
                    salary: '2.200',
                    distance: 490,
                    isFulltime: true,
                    isPanjang: false,
                    isPendek: true)),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                ImageUrl: 'assets/icon_home.png',
              ),
              BottomNavbarItem(
                ImageUrl: 'assets/icon_bookmark_border.png',
              ),
              BottomNavbarItem(
                ImageUrl: 'assets/icon_person_outline.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
