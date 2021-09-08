import 'package:flutter/material.dart';


class BottomNavbarItem extends StatelessWidget {
  
  late String ImageUrl;


  
  BottomNavbarItem({required this.ImageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImageUrl,
          width: 40,
        ),
      ],
    );
  }
}
