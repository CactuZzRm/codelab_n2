import 'package:flutter/material.dart';
import 'package:section_8/global_variables/variables.dart';
import 'package:section_8/pages/details_page.dart';

import 'pages/landing_page.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
