import 'package:flutter/material.dart';
import 'package:flutter_job_search/theme.dart';
import 'package:flutter_job_search/widget/bottom_navbar_detail.dart';

class DetailPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/header_bg.png',
                      width: 411,
                      height: 206,
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 156
                        ),
                        child: Image.asset(
                            'assets/company3.png',
                            width: 100,
                          ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Coffee Barista',
                        style: blackTextSyle.copyWith(
                          fontWeight: bold,
                          fontSize: 24
                        ),
                      ),
                      Text(
                        'Kopi Lain Hati, Semarang',
                        style: greyTextSyle.copyWith(
                          fontWeight: light,
                          fontSize: 18
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rp1.750k/mo',
                            style: greyTextSyle.copyWith(
                              fontWeight: light,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(
                            width: 19,
                          ),
                          Image.asset(
                            'assets/parttime_icon.png',
                            width: 43,
                            height: 14,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      
                    ],
                  )
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 35
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/line.png'
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Description',
                          style: blackTextSyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'A cup of coffee can make everyone smile through their sadness. Barista doesn’t only make a cup of coffee. They greet, smile, they do their job with all their heart.',
                          style: blackTextSyle.copyWith(
                            fontWeight: light
                          ),
                        ),
                        SizedBox(
                          height: 29
                        ),
                        Text(
                          'No need to have an experience, all you have to need are just intention and good attitude. You will work with other baristas as well. If you have no experience with barista, we will give you 3-day training. This job is a part-time job.',
                          style: blackTextSyle.copyWith(
                            fontWeight: light
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          'Qualification',
                          style: blackTextSyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/dot.png',
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Physically and mentally healthy'
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/dot.png',
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Woman or man'
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/dot.png',
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Minimum has senior \nhigh school sertificate'
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/dot.png',
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Have an identity card'
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/dot.png',
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Good in communication and collaboration'
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            //Note: Up Button
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back_btn.png',
                        width: 32,
                      ),
                    ),
                    Image.asset(
                      'assets/share_icon.png',
                      width: 32,
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomNavbarDetailItem(
                  ImageUrl: 'assets/bookmark.png',
                  isBtn: false,
                ),
                BottomNavbarDetailItem(
                  ImageUrl: 'assets/apply_btn.png',
                  isBtn: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}