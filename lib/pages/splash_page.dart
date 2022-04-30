import 'package:flutter/material.dart';
import 'package:section_8/global_variables/variables.dart';

import 'landing_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LandingPage(),
          ),
        );
      },
    );

    return Stack(
      children: [
        Container(
          color: mainYellow,
        ),
        const Align(
          alignment: Alignment.center,
          child: Icon(Icons.airplanemode_on, color: Colors.black, size: 80),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.black.withOpacity(0.2),
              ),
              strokeWidth: 10,
            ),
          ),
        )
      ],
    );
  }
}
