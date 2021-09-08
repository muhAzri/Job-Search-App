import 'package:flutter/material.dart';
import 'package:flutter_job_search/pages/home_page.dart';
import 'package:flutter_job_search/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 157,
            ),
            Image.asset(
              'assets/splash_image.png',
              width: 324,
              height: 294,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Searching Jobs',
              style: darkBlueTextStyle.copyWith(
                  fontWeight: extraBold, fontSize: 24),
            ),
            Text(
              'No need to worry about how hard\nfor you to search a job.\nStart it now.',
              style: darkBlueTextStyle.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 150,
              height: 50,
              // ignore: deprecated_member_use
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                  color: lightBlueColor,
                  child: Text(
                    'Get Started',
                    style: whiteTextStyle.copyWith(
                        fontSize: 18, fontWeight: extraBold),
                  ),
                  onPressed: () {
                    Navigator.push(context, 
                      MaterialPageRoute(
                      builder: (context) => HomePage()
                      )
                      
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
