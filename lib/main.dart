import 'package:flutter/material.dart';
import 'package:langua_master/frontpage/header.dart';
import 'package:langua_master/frontpage/herosection.dart';
import 'package:langua_master/frontpage/signuppage.dart';
import 'package:langua_master/frontpage/featuredlanguage.dart';
import 'package:langua_master/frontpage/testimonial.dart';
import 'package:langua_master/frontpage/features.dart';
import 'package:langua_master/frontpage/footer.dart';

void main() {
  runApp(const LinguaMaster());
}

class LinguaMaster extends StatelessWidget {
  const LinguaMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'LinguaMaster',
      home: const FrontPage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(),
            HeroSection(),
            SignupSection(),
            FeaturedLanguages(),
            Testimonial(),
            Features(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
