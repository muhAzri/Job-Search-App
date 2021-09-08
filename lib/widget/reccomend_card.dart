import 'package:flutter/material.dart';
import 'package:flutter_job_search/models/reccomend.dart';
import 'package:flutter_job_search/theme.dart';

class ReccomendedCard extends StatelessWidget {
  final Reccomend reccomend;

  ReccomendedCard(this.reccomend);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 300,
        color: lightGreyColor,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                  height: 12,
                  ),
                  Image.asset(
                    reccomend.imageUrl,
                    width: 46,
                  ),
                  SizedBox(
                  height: 6,
                  ),
                  Text(
                    reccomend.name,
                    style: blackTextSyle.copyWith(
                      fontSize: 16
                    ),
                  ),
                  Text(
                    reccomend.jobTitle,
                    style: blackTextSyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16
                    ),
                  ),
                  Text(
                    'Rp${reccomend.salary}k/mo · ${reccomend.city}, ${reccomend.country}',
                    style: blackTextSyle.copyWith(
                      fontWeight: light
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/fulltime_icon.png',
                          width: 60,
                        ),
                        Image.asset(
                          'assets/bookmark_icon_filled.png',
                          width: 14,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

