import 'package:flutter/material.dart';

class BottomNavbarDetailItem extends StatelessWidget {
  late String ImageUrl;
  late bool isBtn;

  BottomNavbarDetailItem({required this.ImageUrl, required this.isBtn});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImageUrl,
          width: isBtn ? 263 : 59,
          height: 48,
        ),
      ],
    );
  }
}
