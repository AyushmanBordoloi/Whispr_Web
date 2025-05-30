import 'package:flutter/material.dart';
import 'package:whispr_web/Config/ResponsiveLayout.dart';
import 'package:whispr_web/Pages/MobileHomePage.dart';
import 'package:whispr_web/Pages/WebHomePage.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomePage(), 
      web: WebHomePage()
    );
  }
}