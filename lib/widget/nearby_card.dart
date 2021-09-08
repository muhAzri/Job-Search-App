import 'package:flutter/material.dart';
import 'package:flutter_job_search/models/nearby.dart';
import 'package:flutter_job_search/pages/detail_page.dart';
import 'package:flutter_job_search/theme.dart';

class NearbyCard extends StatelessWidget {

  

  final Nearby nearby;

  NearbyCard(this.nearby);
  

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => DetailPage()
          )
        );
      },
      child: ClipRRect(
        child: Container(
          color: lightGreyColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16
            ),
            child: Row(
              children: [
                Image.asset(
                  nearby.imageUrl,
                  width: 68
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          nearby.name,
                          style: blackTextSyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular
                          ),
                        ),
                        SizedBox(
                          width: nearby.isPanjang ? 17 : nearby.isPendek ? 89 : 40,
                        ),
                        Text(
                          '~${nearby.distance} m',
                          style: blackTextSyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular
                          ),
                        )
                      ],
                    ),
                    Text(
                      nearby.jobTitle,
                      style: blackTextSyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Rp${nearby.salary}k/mo',
                          style: blackTextSyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular
                          ),
                        ),
                        SizedBox(
                          width: 57,
                        ),
                        Image.asset(
                          nearby.isFulltime ? 'assets/fulltime_icon.png' : 'assets/parttime_icon.png',
                          width: 60,
                          height: 18,
                        )
                      ],
                    )
                  ],
                ),
                
              ],
            ),
          )
        ),
      ),
    );
  }
}